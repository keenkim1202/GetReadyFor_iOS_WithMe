//
//  DetailViewController.swift
//  TableViewSectionPractice
//
//  Created by KEEN on 2022/01/25.
//

import UIKit

// 1. 화면 전환하기
// 2. '완료' barButton 만들어주기
// 3. 완료를 눌렀을 때 action : 이전 화면의 테이블뷰에 바뀐 정보 반영하기

class DetailViewController: UIViewController {
  
  @IBOutlet weak var contentTextField: UITextField!
  
  var content: String?
  var section: Int? // 몇번째 섹션인지
  var row: Int? // 몇번째 로우인지
  
  override func viewDidLoad() {
    super.viewDidLoad()
    createRightBarButtonItem()
    contentTextField.text = content
  }
  
  func createRightBarButtonItem() {
    let rightBarButton: UIBarButtonItem = UIBarButtonItem(title: "수정하기", style: .done, target: self, action: #selector(updateButtonClicked))
    
    self.navigationItem.rightBarButtonItem = rightBarButton
  }
  
  @objc func updateButtonClicked() {
    print("updated")
    // 1. 첫번째 뷰컨트롤러에 접근
    guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "vc") as? ViewController else { return }
    // 2. 값 대입해주기(변경)
    
    if let row = row {
      vc.datas[row] = contentTextField.text!
      self.navigationController?.pushViewController(vc, animated: true)
    } else {
      print("인덱스 값이 비어있음")
    }
    
  }
  
}
