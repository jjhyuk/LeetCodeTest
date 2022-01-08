//
//  238.ProductofArrayExceptSelf.swift
//  LeetTest
//
//  Created by jinhyuk on 2022/01/04.
//

import Foundation

class ProductofArrayExceptSelf {
  func productExceptSelf(_ nums: [Int]) -> [Int] {
    var prod = 1
    var result = Array(repeating: 1, count: nums.count)
    
    for i in 0..<nums.count{
      print("nums \(nums)")
      print("result \(result)")
      result[i] = prod
      print("prod \(prod)")
      print("result \(result)")
      print("")
      print("nums[\(i)] \(nums[i])")
      prod *= nums[i]
      print("prod \(prod)")
      print("")
      print("")
    }
    
    prod = 1
    for i in stride(from: nums.count - 1, to: -1, by: -1){
      print("i \(i)")
      print("nums \(nums)")
      print("result \(result)")
      result[i] = prod
      print("prod \(prod)")
      print("result \(result)")
      print("")
      print("nums[\(i)] \(nums[i])")
      prod *= nums[i]
      print("prod \(prod)")
      print("")
      print("")
    }
    return result
  }
}
