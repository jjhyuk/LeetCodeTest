//
//  53.MaximumSubarray.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/12/09.
//

import Foundation

class MaximumSubarray {
  func maxSubArray(_ nums: [Int]) -> Int {
    var m = 0
    var result = Int.min
    for i in 0 ..< nums.count {
      m = max(nums[i], nums[i] + m)
      result = max(result, m)
    }
    return result
  }
}
