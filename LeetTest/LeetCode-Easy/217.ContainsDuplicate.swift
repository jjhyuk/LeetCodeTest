//
//  217.ContainsDuplicate.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/21.
//

import Foundation

class ContainsDuplicate {
  func containsDuplicate(_ nums: [Int]) -> Bool {
    var dict: Dictionary<Int, Int> = Dictionary()
    var result = false
    nums.forEach { n in
      dict[n] = (dict[n] ?? 0) + 1
      if dict[n] ?? 0 > 1 {
        result = true
      }
    }
    return result
  }
}
