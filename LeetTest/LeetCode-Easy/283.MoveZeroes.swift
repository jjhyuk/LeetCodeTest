//
//  283.MoveZeroes.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/21.
//

import Foundation

class MoveZeroes {
  func moveZeroes(_ nums: inout [Int]) {
    var cnt = 0
    nums = nums.filter { n in
      if n == 0 {
        cnt += 1
        return false
      }
      return true
    }
    
    for _ in 0 ..< cnt {
      nums.append(0)
    }
  }
}
