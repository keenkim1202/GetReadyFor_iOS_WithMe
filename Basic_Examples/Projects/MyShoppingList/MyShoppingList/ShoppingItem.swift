//
//  ShoppingItem.swift
//  MyShoppingList
//
//  Created by KEEN on 2022/02/08.
//

import Foundation

class ShoppingItem {
  var name: String
  var isChecked: Bool = false
  
  init(name: String) {
    self.name = name
  }
  
  static var shoppingList: [ShoppingItem] = [
    ShoppingItem(name: "apple"),
    ShoppingItem(name: "banana"),
    ShoppingItem(name: "kiwi")
  ]
  
} 
