//
//  ViewController.swift
//  SimpleDiary
//
//  Created by KEEN on 2022/03/12.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var diaryContentLabel: UILabel!
  @IBOutlet weak var diaryDateLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    imageView.contentMode = .scaleAspectFill
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    if Diary.diaryData.content.isEmpty {
      diaryContentLabel.text = "내용 없음"
    } else {
      diaryContentLabel.text = Diary.diaryData.content
    }
    
    imageView.image = Diary.diaryData.diaryImage
    diaryDateLabel.text = "\(Diary.diaryData.writtenDate)"
  }
  
  @IBAction func addButtonClicked(_ sender: UIBarButtonItem) {
    print(">> to addVC")
    guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "addVC") as? AddViewController else { return }
    self.navigationController?.pushViewController(vc, animated: true)
  }
  

}

