//
//  LoginViewController.swift
//  RemoteConfigEx
//
//  Created by KeenKim on 2023/07/10.
//

import UIKit
import FirebaseAuth
import GoogleSignIn
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var loginInfoLabel: UILabel!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var buttonStackView: UIStackView!
    @IBOutlet weak var googleSignOutButton: UIButton!
    
    private let googleButton: GIDSignInButton = {
        let button = GIDSignInButton()
        button.colorScheme = .light
        button.style = .standard
        button.addTarget(self, action: #selector(googleLoginButtonClicked), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginInfoLabel.font = UIFont.systemFont(ofSize: 12)
        loginInfoLabel.numberOfLines = 6
        buttonStackView.addArrangedSubview(googleButton)
        googleSignOutButton.isHidden = true
    }
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        print(#function)
        let email = idTextField.text!
        let password = passwordTextField.text!
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            
            guard error == nil else {
                strongSelf.showAlert(title: "로그인 실패", message: "다시 시도해주세요.")
                strongSelf.loginInfoLabel.text = "이메일 로그인 실패"
                return
            }
            strongSelf.showAlert(title: "로그인 성공!", message: "사용자: \(email)")
            strongSelf.loginInfoLabel.text = "이메일 로그인 성공: \(email)"
        }
    }
    
    @IBAction func signUpButtonClicked(_ sender: UIButton) {
        print(#function)
        let email = idTextField.text!
        let password = passwordTextField.text!
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            guard error == nil else {
                self.showAlert(title: "회원가입 실패", message: "다시 시도해주세요.")
                self.loginInfoLabel.text = "이메일 회원가입 실패"
                return
            }
            let createdUserEmail = authResult?.user.email ?? "none"
            self.showAlert(title: "회원가입 완료", message: "이메일: \(createdUserEmail)")
            self.loginInfoLabel.text = "이메일 회원가입 성공: \(createdUserEmail)"
        }
    }
    
    func makeCredential() {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config

        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { [unowned self] result, error in
          guard error == nil else {
              print("error: \(error?.localizedDescription)")
              return
          }

          guard let user = result?.user, let idToken = user.idToken?.tokenString else { return }

          let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: user.accessToken.tokenString)
            Auth.auth().signIn(with: credential) { result, error in
                // At this point, our user is signed in
                guard error == nil else { return
                    self.showAlert(title: "구글 로그인 실패", message: "")
                }
                
                self.showAlert(title: "구글 로그인 성공", message: "email: \(result?.user.email ?? "none")")
                
                getUserInfo()
            }
        }
    }
    
    func getUserInfo() {
        let user = Auth.auth().currentUser
        if let user = user {
          // The user's ID, unique to the Firebase project.
          // Do NOT use this value to authenticate with your backend server,
          // if you have one. Use getTokenWithCompletion:completion: instead.
          let uid = user.uid
          let email = user.email
          let photoURL = user.photoURL
          var multiFactorString = "MultiFactor: "
          for info in user.multiFactor.enrolledFactors {
            multiFactorString += info.displayName ?? "[DispayName]"
            multiFactorString += " "
          }
          
            loginInfoLabel.text = """
            - uid: \(uid)
            - email: \(email)
            - potoUrl: \(photoURL)
            """
          
            guard let url = photoURL else { return }
            profileImageView.load(url: url)
        }
        
        googleSignOutButton.isHidden = false
    }
    
    @objc func googleLoginButtonClicked() {
        makeCredential()
    }
    
    @IBAction func googleSignOutClicked(_ sender: UIButton) {
        do {
          try Auth.auth().signOut()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        
        googleSignOutButton.isHidden = true
        loginInfoLabel.text = "구글 로그아웃 성공"
        profileImageView.image = UIImage(systemName: "person.circle")
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .cancel)
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
