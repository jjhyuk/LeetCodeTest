//
//  11.ContainerWithMostWater.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/01.
//

import Foundation

class ContainerWithMostWater {
  func maxArea(_ height: [Int]) -> Int {
    var left = 0
    var right = height.count - 1
    
    var solution = 0
    
    while left < right {
      solution = max(solution, min(height[left], height[right]) * (right - left))
      
      if height[left] < height[right] {
        left += 1
      } else {
        right -= 1
      }
    }
    
    return solution
  }
}
