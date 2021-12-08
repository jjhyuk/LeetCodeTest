//
//  27.RemoveElement.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/12/08.
//

import Foundation

class RemoveElement {
  func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var result = 0
    nums = nums.map { n -> Int in
      if n == val {
        return 999
      } else {
        result += 1
        return n
      }
    }.sorted { $0 < $1 }
    return result
  }
}
