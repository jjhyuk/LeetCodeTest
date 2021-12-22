//
//  387.FirstUniqueCharacterinaString.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/22.
//

import Foundation

class FirstUniqueCharacterinaString {
  func firstUniqChar(_ s: String) -> Int {
    var dict: Dictionary<String, Int> = Dictionary()
    s.map { String($0) }
    .forEach { dict[$0] = (dict[$0] ?? 0) + 1 }
    
    let a = s.compactMap{ $0 }
    var min = Int.max
    dict.filter { $0.value == 1 }
    .forEach { key, value in
      if a.firstIndex(of: Character(key))! < min {
        min = a.firstIndex(of: Character(key))!
      }
    }
    return min == Int.max ? -1 : min
  }
}
