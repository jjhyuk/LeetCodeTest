//
//  15.3Sum.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/01.
//

import Foundation

class ThreeSum {
  func threeSum(_ nums: [Int]) -> [[Int]] {
    print(nums)
    var sort = nums.sorted()
    print(sort)
    
    var left = 0
    var right = sort.count - 1
    
    var result = Array<[Int]>()
    
    for i in 0 ..< sort.count {
      if i > 1 && sort[i] == sort[i - 1] {
        continue
      }
      
      var target = sort[i]
      left = i + 1
      right = sort.count - 1
      
      for j in i + 1 ..< sort.count {
        if target + sort[left] + sort[right] > 0 {
          right -= 1
        } else if target + sort[left] + sort[right] < 0 {
          left += 1
        } else if target + sort[left] + sort[right] == 0 && left < right {
          let check = [target,sort[left], sort[right]]
          if result.contains(check) == false {
            result.append([target,sort[left], sort[right]])
            left += 1
          } else {
            left += 1
          }
        }
      }
    }
    
    
    return result
  }
}
