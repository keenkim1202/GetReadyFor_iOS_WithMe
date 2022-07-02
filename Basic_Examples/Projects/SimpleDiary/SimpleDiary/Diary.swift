//
//  Diary.swift
//  SimpleDiary
//
//  Created by KEEN on 2022/03/12.
//

import UIKit

struct Diary {
  // content, writtenDate, diaryImage
  var content: String
  var writtenDate: Date = Date()
  var diaryImage: UIImage
  
  static var diaryData: Diary = Diary(content: "", diaryImage: UIImage(systemName: "photo.artframe")!)
}
