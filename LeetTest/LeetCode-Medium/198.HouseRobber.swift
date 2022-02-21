//
//  198.HouseRobber.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/02/21.
//

import Foundation

class HouseRobber {
  func rob(_ nums: [Int]) -> Int {
    if nums.count < 2 {
      return nums.first!
    }
    var dp = Array(repeating: 0, count: nums.count + 1)
    dp[1] = nums[0]
    dp[2] = nums[1]
    
    var copy = nums
    copy.insert(0, at: 0)
    
    for i in 3 ..< dp.count {
      dp[i] = copy[i] + max(dp[i-2], dp[i-3])
    }
    
    return dp.max()!
  }
}
