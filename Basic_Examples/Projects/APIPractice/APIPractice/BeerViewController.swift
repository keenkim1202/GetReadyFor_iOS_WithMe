//
//  BeerViewController.swift
//  APIPractice
//
//  Created by KEEN on 2022/05/31.
//

import UIKit

/*
 https://api.punkapi.com/v2/beers
 
 미션: 맥주 목록을 가져와 tableView에 보여주기
 - 1) 모델만들기
 - 2) api로 데이터 통신하여 json 데이터 가져오기
 - 3) json 데이터 decode 하기
 - 4) decode한 데이터를 tableView에 뿌려주기
 */

struct Beer: Decodable {
    let name: String
    let desc: String
    let abv: Float
    let imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case name, abv
        case desc = "description"
        case imageUrl = "image_url"
    }
}

class BeerViewController: UIViewController {
  @IBOutlet weak var beerTableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    beerTableView.delegate = self
    beerTableView.dataSource = self
  }
  
  // TODO: api 통신 작업하기 & decode 하기
}

extension BeerViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5 // temporary
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = beerTableView.dequeueReusableCell(withIdentifier: BeerTableViewCell.identifier, for: indexPath) as? BeerTableViewCell else { return UITableViewCell() }
    // TODO: decode한 데이터 tableView에 뿌려주기
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
  }
}
