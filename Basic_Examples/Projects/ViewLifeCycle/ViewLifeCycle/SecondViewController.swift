//
//  SecondViewController.swift
//  ViewLifeCycle
//
//  Created by KEEN on 2022/02/02.
//

import UIKit

class SecondViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("2", #function)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("2", #function)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("2", #function)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    print("2", #function)
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print("2", #function)
  }
  
  @IBAction func toFirstVC(_ sender: UIButton) {
    print(#function)
    self.navigationController?.popViewController(animated: true)
  }
  
}
