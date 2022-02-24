//
//  238.ProductofArrayExceptSelf.swift
//  LeetTest
//
//  Created by jinhyuk on 2022/01/04.
//

import Foundation

class ProductofArrayExceptSelf {
  func productExceptSelf(_ nums: [Int]) -> [Int] {
    var result = Array(repeating: 1, count: nums.count)
    var prod = 1
    for i in 0 ..< nums.count {
      result[i] = prod
      prod *= nums[i]
    }
    
    prod = 1
    for i in stride(from: nums.count - 1 , to: -1, by: -1) {
      result[i] *= prod
      prod *= nums[i]
    }
    
    return result
  }
}
