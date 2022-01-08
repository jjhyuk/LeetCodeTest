//
//  152.MaximumProductSubarray.swift
//  LeetTest
//
//  Created by jinhyuk on 2022/01/08.
//

import Foundation

/// 다시 풀어보기
class MaximumProductSubarray {
  func maxProduct(_ nums: [Int]) -> Int {
      if nums.isEmpty {
          return Int.min
      }
      let first = nums[0]
      var maxValue = first
      var preMax = first
      var preMin = first
      for i in 1..<nums.count {
          let value = nums[i]
          let curMax = max(preMax * value, preMin * value, value)
          let curMin = min(preMax * value, preMin * value, value)
          maxValue = max(maxValue, curMax)
          preMax = curMax
          preMin = curMin
      }
      return maxValue
  }
}
