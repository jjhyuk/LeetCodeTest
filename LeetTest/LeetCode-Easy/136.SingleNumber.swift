//
//  136.SingleNumber.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/19.
//

import Foundation

class SingleNumber {
  func singleNumber(_ nums: [Int]) -> Int {
    var a = Set(nums)
    var b = Set(nums)
    
    let arr1 = nums.filter { n in
      let result = !a.contains(n)
      a.remove(n)
      return result
    }
    
    let arr2 = b.filter{!arr1.contains($0)}.first
    
    return b.filter{!arr1.contains($0)}.first!
  }
}
