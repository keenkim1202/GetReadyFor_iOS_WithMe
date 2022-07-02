//
//  BookTableViewCell.swift
//  KakaoSearch
//
//  Created by KEEN on 2022/06/11.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    static let identifier = "bookCell"
    
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
}
