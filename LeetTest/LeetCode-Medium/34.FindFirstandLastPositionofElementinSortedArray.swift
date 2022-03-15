//
//  34.FindFirstandLastPositionofElementinSortedArray.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/15.
//

import Foundation

class FindFirstandLastPositionofElementinSortedArray {
  func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    
    return [self.binarySearch(nums: nums, target: target, isLeft: true), self.binarySearch(nums: nums, target: target, isLeft: false)]
  }
  
  func binarySearch(nums: [Int], target: Int, isLeft: Bool) -> Int {
    var l = 0
    var r = nums.count - 1
    var i = -1
    var m = 0
    while l <= r {
      m = (l + r) / 2
      if target > nums[m] {
        l = m + 1
      } else if target < nums[m] {
        r = m - 1
      } else {
        i = m
        if isLeft {
          r = m - 1
        } else {
          l = m + 1
        }
      }
    }
    
    return i
  }
}
