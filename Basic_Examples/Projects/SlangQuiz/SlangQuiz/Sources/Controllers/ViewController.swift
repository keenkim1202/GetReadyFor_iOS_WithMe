//
//  ViewController.swift
//  SlangQuiz
//
//  Created by KEEN on 2022/03/24.
//

import UIKit
/*
 1. seachController 연결하기
 2. 검색어와 완전히 일치하는 항목 거르기
  - 완전히 일치하는 단어가 없을 시에는 "혹시 찾으시는 단어가 이중에 있나요?" 라는 문구와
    함께 해당 검색어가 포함된 slang의 목록(short name들)을 띄워준다.
 3. 검색어와 일치하는 항목을 shortNameLabel, longNameLabel 에 출력하기
 */

class ViewController: UIViewController {

  // MARK: UI
  @IBOutlet weak var shortNameLabel: UILabel!
  @IBOutlet weak var longNameLabel: UILabel!
  
  var matchWord: Slang?
  
  // MARK: View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "신조어 검색기"
    
    let searchController = UISearchController(searchResultsController: nil)
    searchController.searchBar.delegate = self
    searchController.searchResultsUpdater = self
    searchController.searchBar.placeholder = "신조어를 입력해보세요!"
    
    navigationItem.searchController = searchController
  }

  // MARK: Action
  
}

extension ViewController: UISearchBarDelegate, UISearchResultsUpdating {
  func updateSearchResults(for searchController: UISearchController) {
    // if let searchText = searchController.searchBar.text {
    //   matchWord = MyDB.slangList.filter{ $0.shortName == searchText }.first
    //
    //   if let word = matchWord {
    //     shortNameLabel.text = word.shortName
    //     longNameLabel.text = word.longName
    //
    //     matchWord = nil
    //   }
    //
    // } else {
    //   print("일치 결과 없음")
    //   shortNameLabel.text = ""
    //   longNameLabel.text = ""
    // }
  }
  
  // 취소버튼을 눌렀을 때
  func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
    shortNameLabel.text = "신조어를"
    longNameLabel.text = "검색해보세요~ :)"
  }
  
  // 검색버튼을 눌렀을 때
  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    if let searchText = searchBar.text {
      matchWord = MyDB.slangList.filter{ $0.shortName == searchText }.first
      
      if let word = matchWord {
        shortNameLabel.text = word.shortName
        longNameLabel.text = word.longName
        
        matchWord = nil
      } else {
        print("일치 결과 없음")
        shortNameLabel.text = ""
        longNameLabel.text = "알차허는 결과가 없어요..ㅠㅠ"
      }
    }
  }
}
