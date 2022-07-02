//
//  MainViewController.swift
//  PraticeeSearch
//
//  Created by KEEN on 2022/03/19.
//

import UIKit

class MainViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  @IBAction func searchBarButtonClicked(_ sender: UIBarButtonItem) {
    // 화면 전환 코드
    guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "searchVC") else { return }
    self.navigationController?.pushViewController(vc, animated: true)
  }
  
}
