//
//  Anniversary.swift
//  DDayCalendar
//
//  Created by KEEN on 2022/03/06.
//

import Foundation

struct Anniversary {
  var title: String
  var targetDate: Date = Date()
  
  static var ddayList: [Anniversary] = [
    Anniversary(title: "만우절", targetDate: DateFormatter().toDate(target: "2022/04/01")),
    Anniversary(title: "선거", targetDate: DateFormatter().toDate(target: "2022/03/09")),
    Anniversary(title: "오늘", targetDate: DateFormatter().toDate(target: "2022/03/06")), // 오늘 0, DDAY
    Anniversary(title: "새해", targetDate: DateFormatter().toDate(target: "2022/01/01")) // 과거
  ]
}
