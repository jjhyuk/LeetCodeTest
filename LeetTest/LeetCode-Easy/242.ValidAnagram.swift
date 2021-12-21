//
//  242.ValidAnagram.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/21.
//

import Foundation

class ValidAnagram {
  func isAnagram(_ s: String, _ t: String) -> Bool {
    return s.compactMap { $0 }.sorted() == t.compactMap { $0 }.sorted()
  }
}
