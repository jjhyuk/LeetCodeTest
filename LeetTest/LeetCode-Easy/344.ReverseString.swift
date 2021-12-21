//
//  344.ReverseString.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/21.
//

import Foundation

class ReverseString {
//  func reverseString(_ s: inout [Character]) {
//    s.reverse()
//  }
  
  func reverseString(_ s: inout [Character]) {
    swapArray(0, right: s.count - 1, result: &s)
    
    print(s)
  }
  
  func swapArray(_ left: Int, right: Int, result: inout [Character]) {
    
    if left < right {
      result.swapAt(left, right)
      swapArray(left + 1, right: right - 1, result: &result)
    }
  }
}
