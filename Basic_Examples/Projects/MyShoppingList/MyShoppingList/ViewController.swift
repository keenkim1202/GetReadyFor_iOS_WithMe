//
//  ViewController.swift
//  MyShoppingList
//
//  Created by KEEN on 2022/02/08.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var itemTextField: UITextField!
  @IBOutlet weak var tableView: UITableView!

  // var checkedList: [ShoppingItem] = [ShoppingItem(name: "커피")]
  // var notCheckedList: [ShoppingItem] = [ShoppingItem(name: "집"), ShoppingItem(name: "차")]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Shopping List"
    tableView.delegate = self
    tableView.dataSource = self
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    tableView.reloadData()
  }

  @IBAction func onAdd(_ sender: UIButton) {
    let item = itemTextField.text!
    ShoppingItem.shoppingList.append(ShoppingItem(name: item))
    tableView.reloadData()
    
    itemTextField.text = ""
  }
  
  @objc func checkButtonClicked(_ sender: UIButton) {
    print("button clicked.")
    // 만약에 selected -> 빈 체크박스 그림
    // 만약에 not selected -> 색칠된 체크박스 그림
    let isChecked = ShoppingItem.shoppingList[sender.tag].isChecked
    
    if isChecked {
      sender.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
      ShoppingItem.shoppingList[sender.tag].isChecked = false
    } else {
      sender.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
      ShoppingItem.shoppingList[sender.tag].isChecked = true
    }
    
    print(sender.tag, ShoppingItem.shoppingList[sender.tag].isChecked)
  }
  
}


extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return ShoppingItem.shoppingList.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCell", for: indexPath) as? ShoppingListCell else { return UITableViewCell() }
    cell.checkButton.addTarget(self, action: #selector(checkButtonClicked), for: .touchUpInside)
    cell.shoppingLabel.text = ShoppingItem.shoppingList[indexPath.row].name
    cell.checkButton.tag = indexPath.row
    
    cell.selectionStyle = .none
    return cell
  }
  
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
      print("delete")
      ShoppingItem.shoppingList.remove(at: indexPath.row)
      tableView.deleteRows(at: [indexPath], with: .fade)
    } else if editingStyle == .insert {
      print("insert")
    }
  }
}

extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 60
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // 1. 어느 화면으로 전환해줄 건지 선언
    guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "editVC") as? EditViewController else { return }
    
    // 2. 화면 전환해주기 전에 해주어야될 설정
    vc.name = ShoppingItem.shoppingList[indexPath.row].name
    vc.index = indexPath.row
    // 3. 화면 전환 -> (present-dismiss), (push-pop)
    self.navigationController?.pushViewController(vc, animated: true)
  }
}

