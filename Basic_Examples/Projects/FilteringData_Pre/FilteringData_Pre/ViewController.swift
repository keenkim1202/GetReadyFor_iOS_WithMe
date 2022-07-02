//
//  ViewController.swift
//  FilteringData_Pre
//
//  Created by KEEN on 2022/04/01.
//

import UIKit
import FSCalendar

class ViewController: UIViewController {

  let dateFormatter: DateFormatter = {
    let df = DateFormatter()
    df.dateFormat = "yyyy/MM/dd"
    df.locale = Locale(identifier: "ko-KR")
    return df
  }()
  
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var calendarView: FSCalendar!
  @IBOutlet weak var scheduleLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    calendarView.delegate = self
    calendarView.dataSource = self
    
    makeTestData()
  }
  
  func strToDate(str: String) -> Date {
    return dateFormatter.date(from: str)!
  }
  
  func makeTestData() {
    let list: [Schedule] = [
      Schedule(time: "오후 12시", title: "점심 먹기", date: strToDate(str: "2022-04-01")),
      Schedule(time: "오후  1시", title: "발표 하기", date: strToDate(str: "2022-04-01")),
      Schedule(time: "오후  3시", title: "프로젝트 회의", date: strToDate(str: "2022-04-01")),
      Schedule(time: "오전  8시", title: "기상", date: strToDate(str: "2022-04-04")),
      Schedule(time: "오전 10시", title: "모의 시험", date: strToDate(str: "2022-04-04")),
      Schedule(time: "오후  1시", title: "스터디", date: strToDate(str: "2022-04-06")),
      Schedule(time: "오후  3시", title: "과외", date: strToDate(str: "2022-04-11")),
      Schedule(time: "오후  5시", title: "과제하기", date: strToDate(str: "2022-04-13")),
      Schedule(time: "오전 11시", title: "본가 가기", date: strToDate(str: "2022-04-13")),
      Schedule(time: "오후  7시", title: "00이랑 술 약속", date: strToDate(str: "2022-04-20"))
    ]
    
    list.forEach { schedule in
      MyDB.dataList.append(schedule)
    }
  }

}

extension ViewController: FSCalendarDelegate, FSCalendarDataSource {
  func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
    // 날짜별 데이터 점 찍기
    for schedule in MyDB.dataList {
      let eventDate = schedule.date
      
      if eventDate == date {
        let count = MyDB.dataList.filter { s in
          s.date == date
        }.count
        
        if count >= 3 { // 3개 이상일 때는 그냥 점 3개 찍게하기
          return 3
        } else {
          return count
        }
      }
    }
    
    return 0
  }
  
  func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
    // 날짜별 데이터 가져오기
    let data: [Schedule] = MyDB.dataList.filter { schedule in
      schedule.date == date
    }
    
    var text: String = ""
    
    for d in data { // 해당 날짜의 스케쥴 목록 구하기
      text.append("[\(d.time) | \(d.title)] \n")
    }
    
    if text.isEmpty { // 스케쥴 없는 날 처리
      text =  "해당 날짜에는 스케쥴이 없습니다."
    }
    
    // label에 뿌리기
    dateLabel.text = dateFormatter.string(from: date)
    scheduleLabel.text = text
  }
}
