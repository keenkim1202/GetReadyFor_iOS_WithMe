//
//  EventTableViewCell.swift
//  MyCalendar
//
//  Created by KEEN on 2022/04/06.
//

import UIKit

class EventTableViewCell: UITableViewCell {
  static let identifier = "eventCell"
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var timeLabel: UILabel!
}
