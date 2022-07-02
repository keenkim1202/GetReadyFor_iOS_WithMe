//
//  BeerTableViewCell.swift
//  APIPractice
//
//  Created by KEEN on 2022/05/31.
//

import UIKit

class BeerTableViewCell: UITableViewCell {
  static let identifier: String = "beerCell"
  
  @IBOutlet weak var beerImageView: UIImageView!
  @IBOutlet weak var beerNameLabel: UILabel!
  @IBOutlet weak var beerDescriptionLabel: UILabel!
}
