//
//  ListViewController.swift
//  AutoLayoutPractice
//
//  Created by KEEN on 2021/12/28.
//

import UIKit

class ListViewController: UIViewController {
    
  // MARK: Properties
  let fruitsList: [String] = ["apple", "banana", "coconut", "durian", "elderberry", "fig", "grape"]
  let colorList: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .gray]

  // MARK: UI
  @IBOutlet weak var tableView: UITableView!
  
  // MARK: View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.delegate = self
    tableView.dataSource = self
  }

}

// MARK: TableView
extension ListViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return fruitsList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
    cell.titleLabel.text = fruitsList[indexPath.row]
    cell.titleLabel.textColor = colorList[indexPath.row]
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
  }
}
