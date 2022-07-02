//
//  CalcViewController.swift
//  Calculator
//
//  Created by KEEN on 2021/12/23.
//

import UIKit

// 1번 : 계산기 화면
class CalcViewController: UIViewController {
  
  // MARK: - Properties
  var formular: String = ""
  
  // MARK: - UI
  @IBOutlet weak var formulaLabel: UILabel!
  @IBOutlet weak var resultLabel: UILabel!
  
  // MARK: - View Life-Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  // MARK: - ETC
  func makeFomular(keypadChar: String) {
    formular.append(keypadChar)
    formulaLabel.text = formular
  }
  
  // MARK: - Actions
  @IBAction func clearButton(_ sender: UIButton) {
    formular = ""
    formulaLabel.text = "0"
  }
  
  @IBAction func oneButton(_ sender: UIButton) {
    makeFomular(keypadChar: "1")
  }
  
  @IBAction func twoButton(_ sender: UIButton) {
    makeFomular(keypadChar: "2")
  }
  
  @IBAction func threeButton(_ sender: UIButton) {
    makeFomular(keypadChar: "3")
  }

  @IBAction func fourButton(_ sender: UIButton) {
    makeFomular(keypadChar: "4")
  }

  @IBAction func fiveButton(_ sender: UIButton) {
    makeFomular(keypadChar: "5")
  }

  @IBAction func sixButton(_ sender: UIButton) {
    makeFomular(keypadChar: "6")
  }

  @IBAction func sevenButton(_ sender: UIButton) {
    makeFomular(keypadChar: "7")
  }

  @IBAction func eightButton(_ sender: UIButton) {
    makeFomular(keypadChar: "8")
  }

  @IBAction func nineButton(_ sender: UIButton) {
    makeFomular(keypadChar: "9")
  }

  @IBAction func zeroButton(_ sender: UIButton) {
    makeFomular(keypadChar: "0")
  }
  
  @IBAction func dotButton(_ sender: UIButton) {
    makeFomular(keypadChar: ".")
  }
  
  // MARK: - Calc Buttons
  @IBAction func plusButton(_ sender: UIButton) {
    makeFomular(keypadChar: "+")
  }
  
  @IBAction func minusButton(_ sender: UIButton) {
    makeFomular(keypadChar: "-")
  }
  
  @IBAction func multiplyButton(_ sender: UIButton) {
    makeFomular(keypadChar: "*")
  }
  
  @IBAction func divideButton(_ sender: UIButton) {
    makeFomular(keypadChar: "/")
  }
  
  @IBAction func remButton(_ sender: UIButton) {
    makeFomular(keypadChar: "%")
  }
  
  @IBAction func equalButton(_ sender: UIButton) {
  }
  
}
