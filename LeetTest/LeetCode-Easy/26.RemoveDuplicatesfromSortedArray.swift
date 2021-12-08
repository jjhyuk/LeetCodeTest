//
//  26.RemoveDuplicatesfromSortedArray.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/12/08.
//

import Foundation

class RemoveDuplicatesfromSortedArray {
  func removeDuplicates(_ nums: inout [Int]) -> Int {
    var set = Set<Int>()
    nums = nums.map { n -> Int in
      if set.contains(n) {
        return 30001
      } else {
        set.update(with: n)
        return n
      }
    }.sorted { a, b in
      return a < b
    }
    return set.count
  }
}
