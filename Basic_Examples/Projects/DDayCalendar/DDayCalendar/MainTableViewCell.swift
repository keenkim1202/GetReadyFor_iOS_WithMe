//
//  MainTableViewCell.swift
//  DDayCalendar
//
//  Created by KEEN on 2022/03/06.
//

import UIKit

class MainTableViewCell: UITableViewCell {
  // static : 클래스나 구조체 안에서 변하지 않는 어떤 값으로 사용가능
  static let identifier = "cell"
  
  @IBOutlet weak var ddayLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
}
