//
//  1.TwoSum.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/02/24.
//

import Foundation

class TwoSum {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var solution = Array<Int>()
    for i in 0 ..< nums.count {
      if i + 1 < nums.count {
        for j in i + 1 ..< nums.count {
          if target == nums[i] + nums[j] {
            solution.append(i)
            solution.append(j)
          }
        }
      }
    }
    return solution
  }
}
