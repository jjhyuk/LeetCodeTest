//
//  LongestIncreasingSubsequence.swift.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/02/20.
//

import Foundation

class LongestIncreasingSubsequence {
  func lengthOfLIS(_ nums: [Int]) -> Int {
    
    var solutions = Array(repeating: 1, count: nums.count + 1)
    
    for i in stride(from: solutions.count, to: -1, by: -1) {
      for j in stride(from: i + 1, to: nums.count, by: 1) {
        if nums[i] < nums[j] {
          solutions[i] = max(solutions[i], 1 + solutions[j])
        }
      }
    }
    
    return solutions.max()!
  }
}
