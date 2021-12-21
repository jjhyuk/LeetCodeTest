//
//  268.MissingNumber.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/21.
//

import Foundation

class MissingNumber {
  func missingNumber(_ nums: [Int]) -> Int {
    let sort = nums.sorted()
    var result = 0
    for i in 0 ..< nums.count {
      if i != sort[i] {
        result = i
        break
      }
      
      if i +  1 == nums.count {
        result = i + 1
      }
    }
    
    return result
  }
}
