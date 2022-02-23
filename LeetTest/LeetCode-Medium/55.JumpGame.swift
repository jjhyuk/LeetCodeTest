//
//  55.JumpGame.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/02/23.
//

import Foundation

class JumpGame {
  func canJump(_ nums: [Int]) -> Bool {
    var solution = Array(repeating: 0, count: nums.count)
    solution.removeLast()
    solution.append(1)
    
    for i in stride(from: solution.count - 2, to: -1, by: -1) {
      if i + nums[i] < solution.count {
        solution[i] = solution[i ... i + nums[i]].contains(1) ? 1 : 0
      } else {
        solution[i] = solution[i ..< solution.count].contains(1) ? 1 : 0
      }
    }
    return solution[0] == 1
  }
}
