//
//  ViewController.swift
//  NavigationBarAndTableView
//
//  Created by KEEN on 2022/01/18.
//

import UIKit

class ViewController: UIViewController {
  
  // UI

  
  // View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "첫번째 화면"
    
  }
  
  
  // Action
  @IBAction func toSecondVC(_ sender: UIButton) {
    // 1. 어디로 갈건지 목적지 선언
    guard let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "seconVC") else { return }
    
    // 도착지에 대한 초기화: 설정, 데이터 넘겨주기
    // secondVC.modalPresentationStyle = .fullScreen
    // 2-1. present - dimiss
    // self.present(secondVC, animated: true, completion: nil)
    
    // 2-2. push - pop
    // push는 navigationController의 기능이기 때문에 self.navigationController. 으로 접근해야됨.
    self.navigationController?.pushViewController(secondVC, animated: true)
  }
  

}

