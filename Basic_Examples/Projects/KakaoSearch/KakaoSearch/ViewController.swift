//
//  ViewController.swift
//  KakaoSearch
//
//  Created by KEEN on 2022/06/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var bookTableView: UITableView!
    
    var bookList: [Book] = [] {
        didSet {
            DispatchQueue.main.async {
                self.bookTableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bookTableView.dataSource = self
        bookTableView.delegate = self
    }
    
    func search(query: String) {
        APIService().searchBook(query: query) { document, code in
            if code == 200 {
                guard let document = document else { return }
                self.bookList = document.documents
            } else {
                print("검색 실패", code) // TODO: 얼럿처리 해오기
            }
            
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookList.count // test
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BookTableViewCell.identifier, for: indexPath) as? BookTableViewCell else {
            return UITableViewCell()
        }
        
        let book = bookList[indexPath.row]
        cell.bookImageView.image = UIImage(systemName: "pencil") // test
        cell.titleLabel.text = book.title
        cell.contentLabel.text = book.contents
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
}
