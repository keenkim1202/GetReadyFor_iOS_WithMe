//
//  Book.swift
//  KakaoSearch
//
//  Created by KEEN on 2022/06/11.
//

import Foundation

struct Document: Decodable {
    let documents: [Book]
}

struct Book: Decodable {
    let title: String
    let contents: String
}
