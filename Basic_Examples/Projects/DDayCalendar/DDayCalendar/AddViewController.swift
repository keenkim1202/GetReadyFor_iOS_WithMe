//
//  AddViewController.swift
//  DDayCalendar
//
//  Created by KEEN on 2022/03/06.
//

import UIKit

class AddViewController: UIViewController {
  
  // UI
  @IBOutlet weak var anniImageView: UIImageView!
  @IBOutlet weak var datePicker: UIDatePicker!
  @IBOutlet weak var titleTextField: UITextField!
  
  // Properties
  var dday: Anniversary?
  var row: Int?
  
  // View Life-Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let dday = dday {
      datePicker.date = dday.targetDate
      titleTextField.text = dday.title
    }
    
    let rightBarButton = UIBarButtonItem(title: "저장", style: .done, target: self, action: #selector(saveButton))
    self.navigationItem.rightBarButtonItem = rightBarButton
  }
  
  // Configure
  
  // Actions
  @objc func saveButton() {
    print("saved")
    // 1. 날짜정보, 타이틀 정보를 Anniversary 타입으로 기념일 만들어주기
    let title = titleTextField.text!
    let anniversary = Anniversary(title: title, targetDate: datePicker.date)
    // 2. 기념일을 ddayList에 추가하기
    if let row = row {
      Anniversary.ddayList[row] = anniversary // 꼭. 헷갈리지말것. 바꿔치기란, 삭제후 추가가 아니라. 그냥 대입.
    } else {
      Anniversary.ddayList.append(anniversary)
    }
    // 3. 이전화면으로 돌아가기
    self.navigationController?.popViewController(animated: true)
  }
  
  @IBAction func addImageButtonClicked(_ sender: UIButton) {
  }
  
  
}
