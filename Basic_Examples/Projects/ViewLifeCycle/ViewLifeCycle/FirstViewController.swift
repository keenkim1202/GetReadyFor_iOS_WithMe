//
//  ViewController.swift
//  ViewLifeCycle
//
//  Created by KEEN on 2022/02/02.
//

import UIKit

class FirstViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    print("1", #function)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("1", #function)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("1", #function)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    print("1", #function)
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print("1", #function)
  }

  @IBAction func toSeconVC(_ sender: UIButton) {
    print(#function)
    let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
    secondVC.modalPresentationStyle = .fullScreen
    // self.present(secondVC, animated: true, completion: nil)
    self.navigationController?.pushViewController(secondVC, animated: true)
  }
}

