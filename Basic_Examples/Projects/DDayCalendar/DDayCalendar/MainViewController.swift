//
//  MainViewController.swift
//  DDayCalendar
//
//  Created by KEEN on 2022/03/06.
//

import UIKit

class MainViewController: UIViewController {
  
  // UI
  @IBOutlet weak var tableView: UITableView!
  
  // Properties
  let dateFormatter: DateFormatter = {
    let df = DateFormatter()
    df.dateFormat = "yyyy/MM/dd"
    df.locale = Locale(identifier: "ko-kr")
    df.timeZone = TimeZone(abbreviation: "KST")
    df.dateStyle = .medium
    df.timeStyle = .medium
    return df
  }()
  
  let currentDate = Date()
  let calendar = Calendar.current

  // View Life-Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    let sortedList = Anniversary.ddayList.sorted { lhs, rhs in
      lhs.targetDate > rhs.targetDate
    }
    
    Anniversary.ddayList = sortedList
    
    tableView.reloadData()
  }
  
  // Configure
  
  // etc
  func calculateDDay(targetDate: Date) -> Int {
    // 1. 로케일이랑 한국표준시 적용
    // 2. 시간정보 설정 -> 시작날짜랑 타켓날짜 모두 그 날이 시작하는 0시 0분 0초로 바꿔주는 것
    let start = calendar.startOfDay(for: currentDate)
    let end = calendar.startOfDay(for: targetDate)
    
    let dayCount = calendar.dateComponents([.day], from: start, to: end).value(for: .day)!
    return dayCount
  }
  
  // Action
  @IBAction func addButtonClicked(_ sender: UIBarButtonItem) {
    guard let addVC = self.storyboard?.instantiateViewController(withIdentifier: "addVC") as? AddViewController else { return }
    addVC.title = "DDAY 추가하기"
    self.navigationController?.pushViewController(addVC, animated: true)
  }

}

// extension
extension MainViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Anniversary.ddayList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier, for: indexPath) as? MainTableViewCell else { return UITableViewCell() }
    let dday = Anniversary.ddayList[indexPath.row]
    cell.titleLabel.text = dday.title
    
    let days = calculateDDay(targetDate: dday.targetDate)
    
    if days > 0 {
      cell.ddayLabel.text = "D -\(days)"
    } else if days == 0 {
      cell.ddayLabel.text = "D -DAY"
      cell.ddayLabel.textColor = .red
    }else {
      cell.ddayLabel.text = "D +\(-days)"
      cell.ddayLabel.textColor = .lightGray
    }
    
    return cell
  }
  
}

extension MainViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard let editVC = self.storyboard?.instantiateViewController(withIdentifier: "addVC") as? AddViewController else { return }
    editVC.title = "DDAY 수정하기"
    
    let dday = Anniversary.ddayList[indexPath.row]
    editVC.dday = dday
    editVC.row = indexPath.row
    
    self.navigationController?.pushViewController(editVC, animated: true)
    
  }
}
