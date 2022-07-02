//
//  ViewController.swift
//  EnumPractice
//
//  Created by KEEN on 2022/02/23.
//

import UIKit

/*
 버튼을 누르면 상태가 바뀔거야. -> 전구를 껏다켯다.
 
 전구 : 꺼졌다. 켜졌다 -> 2가지 상태가 존재.
 
 꺼지면 -> 배경색을 검은색, 글씨는 노란색
 켜지면 -> 배경색을 노란생, 늘씨는 검정색
 */

class ViewController: UIViewController {
  
  // enum
  enum State: String {
    case off
    case on
  }
  
  // property
  var state: State = .off
  
  // ui
  @IBOutlet weak var stateLabel: UILabel!
  
  // view life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  // action
  @IBAction func switchButton(_ sender: UIButton) {
    stateLabel.text = state.rawValue
    
    switch state {
    case .off:
      view.backgroundColor = .black
      stateLabel.textColor = .yellow
      state = .on
    case .on:
      view.backgroundColor = .yellow
      stateLabel.textColor = .black
      state = .off
    }
  }
}
