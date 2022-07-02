//
//  EditViewController.swift
//  MyShoppingList
//
//  Created by KEEN on 2022/02/23.
//

import UIKit

class EditViewController: UIViewController {
  
  var index: Int?
  var name: String?
  
  @IBOutlet weak var editTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Edit Item"
    
    if let name = name {
      editTextField.text = name
    }
    
  }
  
  @IBAction func editButton(_ sender: UIButton) {
    // 1. 변경된 이름이 필요
    let text = editTextField.text!
    
    // 2. 대입
    if let index = index {
      ShoppingItem.shoppingList[index].name = text
    } else {
      print("index nil")
    }
    
    // 3. (선택) 수정이 되는 순간 -> 이전화면으로 돌아가기.
    self.navigationController?.popViewController(animated: true)
    
    // 4. ViewController > 테이블뷰를 갱신
  }
  
}
