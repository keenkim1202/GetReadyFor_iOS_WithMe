//
//  InchTransViewController.swift
//  Calculator
//
//  Created by KEEN on 2021/12/23.
//

import UIKit

// 2번 : Inch -> cm 변환기 화면
class InchTransViewController: UIViewController {
  
  // property
  
  
  // ui
  @IBOutlet weak var inchTextField: UITextField!
  @IBOutlet weak var transButton: UIButton!
  @IBOutlet weak var resultLabel: UILabel!
  
  // view life-cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  // configure
  
  
  // etc function
  
  
  // action
  @IBAction func transButtonClicked(_ sender: UIButton) {
    print("button clicked.")
    // 1. textField의 글자를 받아오기
    let text = inchTextField.text!
    
    // optional unwrapping : if let, guard
    // let doubleValue = Double(text) ?? 0
    if let doubleValue = Double(text) {
      // 2. textField에서 받아온 inch를 cm로 계산하기
      var result = doubleValue * 2.54
      // 2-1. 소수점 2째자리까지만 자르기
      result = round(result * 100) / 100
      
      // 3. 계산한 값을 label에 보여주기
      
      resultLabel.text = "\(result) cm"
    } else {
      resultLabel.text = "입력이 올바르지 않습니다. 다시시도해주세요."
    }
    
  }
}

// extension
