//
//  ViewController.swift
//  MyCalendar
//
//  Created by KEEN on 2022/03/31.
//

import UIKit
import FSCalendar

class ViewController: UIViewController {
  
  // MARK: properties
  var filteredList: [Schedule] = []
  
  let dateFormatter: DateFormatter = {
    let df = DateFormatter()
    df.dateFormat = "yyyy/MM/dd"
    df.locale = Locale(identifier: "ko-KR")
    return df
  }()
  
  // MARK: Outlets
  @IBOutlet weak var eventTableView: UITableView!
  @IBOutlet weak var calendarView: FSCalendar!
  @IBOutlet weak var dateLabel: UILabel!
  
  // MARK: View Life-Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    eventTableView.delegate = self
    eventTableView.dataSource = self
    
    configure()
    makeTestData()
  }
  
  // MARK: Configure
  func configure() {
    calendarView.delegate = self
    calendarView.dataSource = self
    
    calendarView.appearance.borderRadius = 0
    calendarView.locale = Locale(identifier: "ko-KR")
    
    calendarView.appearance.selectionColor = .systemTeal
    calendarView.appearance.todayColor = .systemRed
    calendarView.appearance.headerTitleColor = .systemPink
    calendarView.appearance.eventDefaultColor = .systemGreen
  }
  
  func makeTestData() {
    let list: [Schedule] = [
      Schedule(time: "오후 12시", title: "점심 먹기", date: strToDate(str: "2022/04/01")),
      Schedule(time: "오후  1시", title: "발표 하기", date: strToDate(str: "2022/04/01")),
      Schedule(time: "오후  3시", title: "프로젝트 회의", date: strToDate(str: "2022/04/01")),
      Schedule(time: "오전  8시", title: "기상", date: strToDate(str: "2022/04/04")),
      Schedule(time: "오전 10시", title: "모의 시험", date: strToDate(str: "2022/04/04")),
      Schedule(time: "오후  1시", title: "스터디", date: strToDate(str: "2022/04/06")),
      Schedule(time: "오후  3시", title: "과외", date: strToDate(str: "2022/04/11")),
      Schedule(time: "오후  5시", title: "과제하기", date: strToDate(str: "2022/04/13")),
      Schedule(time: "오전 11시", title: "본가 가기", date: strToDate(str: "2022/04/13")),
      Schedule(time: "오후  7시", title: "00이랑 술 약속", date: strToDate(str: "2022/04/20"))
    ]
    
    list.forEach { schedule in
      MyDB.dataList.append(schedule)
    }
  }
  
  func strToDate(str: String) -> Date {
    return dateFormatter.date(from: str)!
  }
}

// MARK: Extensions
extension ViewController: FSCalendarDelegate, FSCalendarDataSource {
  func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
    for schedule in MyDB.dataList {
      let eventDate = schedule.date
      
      if eventDate == date {
        let count = MyDB.dataList.filter { schedule in
          schedule.date == date
        }.count
        
        if count >= 3 {
          return 3
        } else {
          return count
        }
      }
    }
    
    return 0
  }
  
  func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
    print(#function)
    dateLabel.text = dateFormatter.string(from: date)
    
    filteredList = MyDB.dataList.filter { schedule in
      schedule.date == date
    }
    
    if filteredList.count == 0 {
      filteredList.append(Schedule(time: "", title: "스케쥴이 없는 날입니다.", date: date))
    }
    
    eventTableView.reloadData()
  }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    print(#function)
    return filteredList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: EventTableViewCell.identifier, for: indexPath) as? EventTableViewCell else { return UITableViewCell() }
    
    let event = filteredList[indexPath.row]
    cell.titleLabel.text = event.title
    cell.timeLabel.text = event.time
    return cell
  }
}
