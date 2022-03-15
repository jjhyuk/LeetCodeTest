//
//  189.RotateArray.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/15.
//

import Foundation

class RotateArray {
  func rotate(_ nums: inout [Int], _ k: Int) {
    for _ in 0 ..< k {
      let tmp = nums.popLast()
      nums.insert(tmp!, at: 0)
    }
  }
}
