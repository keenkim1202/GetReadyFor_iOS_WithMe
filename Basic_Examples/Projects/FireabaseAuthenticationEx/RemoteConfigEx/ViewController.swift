//
//  ViewController.swift
//  RemoteConfigEx
//
//  Created by KeenKim on 2023/06/09.
//

import UIKit
import FirebaseRemoteConfig

class ViewController: UIViewController {
    @IBOutlet weak var newFeatureButton: UIButton!
    @IBOutlet weak var testLabel: UILabel!
    
    var remoteConfig: RemoteConfig?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        remoteConfigSetup()
        fetch()
    }
    
    func remoteConfigSetup() {
        remoteConfig = RemoteConfig.remoteConfig()
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        remoteConfig?.configSettings = settings
    }
    
    func fetch() {
        guard let remoteConfig = remoteConfig else { return }
        
        remoteConfig.fetch{ [weak self] status, error in
            if status == .success {
                print("Config fetched!")
                remoteConfig.activate(completion: nil)
            } else {
                print("Config not fetched")
                print("Error: \(error?.localizedDescription ?? "No error available.")")
            }
            
            let string = remoteConfig["someString"].stringValue
            self?.testLabel.text = string ?? "empty"
         
            let isHideButton = remoteConfig["hideButton"].boolValue
            self?.newFeatureButton.isHidden = isHideButton
        }
    }
}

