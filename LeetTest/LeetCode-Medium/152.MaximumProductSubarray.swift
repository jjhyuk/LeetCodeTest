//
//  152.MaximumProductSubarray.swift
//  LeetTest
//
//  Created by jinhyuk on 2022/01/08.
//

import Foundation

class MaximumProductSubarray {
  func maxProduct(_ nums: [Int]) -> Int {
    
    var solution = Array<Int>()
    for i in 0 ..< nums.count {
      if nums[i] == 0 {
        solution.append(0)
      } else {
        var a = nums[i ..< nums.count]
        solution.append(helper(Array(a)))
      }
    }
    return solution.max()!
  }
  
  func helper(_ nums: [Int]) -> Int {
    var copy = nums
    print(copy)
    if nums.count == 1 {
      return nums.first!
    } else if nums.count == 2 {
      return max(max(nums[0], nums[1]), nums[0]*nums[1])
    } else if nums[0] == 0 {
      copy.removeFirst()
      return max(maxProduct(copy), nums[0])
    }
    
    let next = nums[0] * nums[1]
    copy.removeFirst()
    copy.removeFirst()
    copy.insert(next, at: 0)
    
    return max(maxProduct(copy), nums[0])
  }
}
