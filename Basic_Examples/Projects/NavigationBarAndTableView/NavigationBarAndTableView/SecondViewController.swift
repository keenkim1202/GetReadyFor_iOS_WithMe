//
//  SecondViewController.swift
//  NavigationBarAndTableView
//
//  Created by KEEN on 2022/01/18.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  let todoList: [String] = ["아침 먹기", "공부 하기", "점심 먹기", "복습 하기", "저녁먹기", "유튜브 보기", "잠 자기"]
  
  // UI
  @IBOutlet weak var tableView: UITableView!
  
  // view Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "두번째 화면"
    
    tableView.delegate = self
    tableView.dataSource = self
  }
  
  // action
  @IBAction func saveButton(_ sender: UIButton) {
    // 버튼 클릭 시, 이전 화면으로 돌아가기
    // self.dismiss(animated: true, completion: nil)
    self.navigationController?.popViewController(animated: true)
  }
  
  // tableView
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return todoList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath) as? SecondTableViewCell else { return UITableViewCell() }
    
    let todo = todoList[indexPath.row]
    cell.todoLabel.text = todo
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 90
  }
  
}
