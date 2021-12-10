//
//  70.ClimbingStairs.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/12/10.
//

import Foundation

class ClimbingStairs {
  func climbStairs(_ n: Int) -> Int {
    if n == 1 {
      return 1
    }
    var arr = Array(repeating: 1, count: n + 1)
    for i in 2 ..< arr.count {
      arr[i] = arr[i-1] + arr[i-2]
    }
    return arr.last!
  }
  
  func recursive(_ n: Int) -> Int {
    if n - 1 < 0 {
      return 1
    } else if n - 2 < 0 {
      return 1
    } else {
      return recursive(n - 1) + recursive(n - 2)
    }
  }
}
