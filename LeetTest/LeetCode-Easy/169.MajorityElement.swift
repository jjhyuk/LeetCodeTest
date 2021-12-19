//
//  169.MajorityElement.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/19.
//

import Foundation

class MajorityElement {
  func majorityElement(_ nums: [Int]) -> Int {
    if nums.count == 1 {
      return nums.first!
    }
    
    var dict: Dictionary<Int, Int> = Dictionary()
    for num in nums {
      dict[num] = (dict[num] ?? 0) + 1
    }

    var max = Int.min
    for k in dict.keys {
      if dict[k]! > dict[max] ?? Int.min {
        max = k
      }
    }
    
    return max
  }
}
