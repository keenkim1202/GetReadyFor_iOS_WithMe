//
//  ViewController.swift
//  PraticeeSearch
//
//  Created by KEEN on 2022/03/19.
//

import UIKit

class SearchViewController: UIViewController {

  // MARK: UI
  @IBOutlet weak var tableView: UITableView!
  
  // MARK: Properties
  var alienList: [String] = ["breqrains", "ghivval", "krel", "throngraks", "hummur", "elgan", "one", "dalmi", "comad", "bognaer", "equd", "trexeid", "thraerex", "vuuczils", "henairs"]
  var filteredList: [String] = []
  
  // MARK: View Life-Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
    
    title = "이름을 검색하세요"
    
    filteredList = alienList
    
    let searchController = UISearchController(searchResultsController: nil)
    searchController.searchResultsUpdater = self
    searchController.searchBar.delegate = self
    navigationItem.hidesSearchBarWhenScrolling = false
    searchController.searchBar.placeholder = "이름을 입력해주세요"
    navigationItem.searchController = searchController
  }
  
  func showDeleteAlert(indexPath: IndexPath) {
    let alert = UIAlertController(title: "⚠️", message: "정말 삭제하시겠습니까?", preferredStyle: .alert)
    let deleteButton = UIAlertAction(title: "삭제", style: .destructive) { _ in
      self.filteredList.remove(at: indexPath.row)
      self.tableView.deleteRows(at: [indexPath], with: .fade)
    }
    let cancelButton = UIAlertAction(title: "취소", style: .default, handler: nil)
    
    alert.addAction(deleteButton)
    alert.addAction(cancelButton)
    
    present(alert, animated: true, completion: nil)
  }
  
}

// MARK: Extensions - UITableViewDelegate & UITableViewDataSource
extension SearchViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return filteredList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchTableViewCell.identifier, for: indexPath) as? SearchTableViewCell else { return UITableViewCell() }
    
    if !filteredList.isEmpty {
      cell.contentLabel.text = filteredList[indexPath.row]
    }
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
      showDeleteAlert(indexPath: indexPath)
    }
  }
}

extension SearchViewController: UITableViewDelegate {
}

// MARK: Extensions - UISearchBarDelegate, UISearchResultsUpdating
extension SearchViewController: UISearchBarDelegate, UISearchResultsUpdating {
  func updateSearchResults(for searchController: UISearchController) {
    if let text = searchController.searchBar.text {
      print("검색어:", text)
      self.filteredList = self.alienList.filter{ $0.lowercased().contains(text) }
      print("검색 결과:", filteredList)
    } else {
      print("text가 존재하지 않는다.")
    }
  }
  
  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    tableView.reloadData()
  }
  
  func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
    filteredList = alienList
    tableView.reloadData()
  }
}
