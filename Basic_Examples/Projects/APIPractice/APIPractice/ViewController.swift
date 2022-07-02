//
//  ViewController.swift
//  APIPractice
//
//  Created by KEEN on 2022/05/25.
//

import UIKit

/*
 랜덤 맥주 API : https://punkapi.com/documentation/v2
 */

// encode : 이런 모델로 구성된 json 파일을 생성
// decode : json 파일을 해독해서 우리가 원하는 모델의 형태로 만들어 주는 것
struct RandomBeer: Decodable {
  let name: String
  let tagline: String
  let first_brewed: String
  let description: String
  let image_url: String
  let abv: Float
}

class ViewController: UIViewController {
  @IBOutlet weak var beerImageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var taglineLabel: UILabel!
  @IBOutlet weak var firstBrewedLabel: UILabel!
  @IBOutlet weak var descLabel: UILabel!
  @IBOutlet weak var abvLabel: UILabel!
  
  let url: URL = URL(string: "https://api.punkapi.com/v2/beers/random")!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    fetchBeer()
  }
  
  func fetchBeer() {
    apiService { beer, result in
      guard let beer = beer else {
        print(result)
        return
      }
      
      DispatchQueue.main.async {
        self.nameLabel.text = beer.name
        self.taglineLabel.text = beer.tagline
        self.firstBrewedLabel.text = beer.first_brewed
        self.descLabel.text = beer.description
        self.abvLabel.text = "\(beer.abv) abv"
      }
    }
  }

  func apiService(completion: @escaping (RandomBeer?, String) -> Void) {
    URLSession.shared.dataTask(with: url) { data, response, error in
      guard let response = response as? HTTPURLResponse else { return }
      guard response.statusCode == 200 else {
        completion(nil, "데이터 통신 실패: \(response.statusCode)")
        return
      }
      
      guard let data = data else { return }
      // print("data:", String(bytes: data, encoding: .utf8))
      
      do {
        let decoder = JSONDecoder()
        let beerInfo = try decoder.decode([RandomBeer].self, from: data)
        
        completion(beerInfo[0], "데이터 통신 완료")
      } catch {
        completion(nil, "decode 실패")
      }
    }.resume()
  }
  
  @IBAction func beerListButtonClicked(_ sender: UIBarButtonItem) {
    guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "beerListVC") as? BeerViewController else { return }
    self.navigationController?.pushViewController(vc, animated: true)
  }
  
  @IBAction func refreshButtonClicked(_ sender: UIBarButtonItem) {
    fetchBeer()
  }
}
