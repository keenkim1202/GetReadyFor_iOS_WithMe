//
//  SecondViewController.swift
//  RemoteConfigEx
//
//  Created by KeenKim on 2023/06/09.
//

import UIKit
import FirebaseFirestore

class SecondViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var indexTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    struct User {
        var document: String
        var data: String
    }
    
    let db = Firestore.firestore()
    var userList: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
    }
    
    func saveData() {
        // Add a new document with a generated ID
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "name": inputTextField.text!
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }
    
    func fetchData() {
        userList = []
        
        db.collection("users").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    let data = document.data()
                    
                    if let result = data["name"] as? String {
                        let user = User(document: document.documentID, data: result)
                        self.userList.append(user)
                    }
                }
                
                self.getResultString()
            }
        }
    }
    
    func getResultString() {
        // userList 자체를 정렬하는 방법
        userList = userList.sorted{ $0.data < $1.data }
        self.resultLabel.text = userList.map{ $0.data }.joined(separator: ", ")
        
        // id값으로 지우는 방법
        // self.resultLabel.text = userList.map{ $0.data }.sorted().joined(separator: ", ")
    }
    
    func deleteData(user: User) {
        deleteButton.isEnabled = false
        
        db.collection("users").document(user.document).delete() { err in
            if let err = err {
                print("Error removing document: \(err)")
            } else {
                print("Document successfully removed!")
            }
            
            self.deleteButton.isEnabled = true
        }
    }
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        saveData()
        inputTextField.text = ""
        fetchData()
    }
    
    @IBAction func removeButtonClicked(_ sender: UIButton) {
        guard let text = indexTextField.text, let index = Int(text) else { return }
        // userList 자체를 정렬하는 방법
        deleteData(user: userList[index])
        userList.remove(at: index)
        
        // id값으로 지우는 방법
        // let deleteUser = userList.sorted{ $0.data < $1.data }[index]
        // deleteData(user: deleteUser)
        // userList.removeAll { $0.document == deleteUser.document }
        
        indexTextField.text = ""
        fetchData()
    }
    
}
