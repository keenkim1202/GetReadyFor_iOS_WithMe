//
//  ViewController.swift
//  TableViewSectionPractice
//
//  Created by KEEN on 2022/01/25.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: UI
  @IBOutlet weak var tableView: UITableView!
  
  // MARK: Properties
  let sections: [String] = ["섹션1", "섹션2", "섹션3"]
  var datas: [String] = ["로우1", "로우2", "로우3", "로우4", "로우5"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
  }

}

// MARK: Extension
// - delegate
extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print(indexPath)
    // 1. cell 을 눌렀을 때 detailVC 로 넘어갈 것.
    guard let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "detailVC") as? DetailViewController else { return }
    // 2. cell의 contentLabel에 적흰 text를 detailVC의 contentTextField에 넘겨줄 것.
    detailVC.content = datas[indexPath.row]
    detailVC.row = indexPath.row
    detailVC.section = indexPath.section
    self.navigationController?.pushViewController(detailVC, animated: true)
  }
}

// - dataSource
extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return datas.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? DataTableViewCell else { return UITableViewCell() }
    cell.contentLabel.text = datas[indexPath.row]
    return cell
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return sections.count
  }
  
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return sections[section]
  }
}

