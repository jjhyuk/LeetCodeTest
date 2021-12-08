//
//  9. Palindrome Number.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/11/24.
//

import Foundation

class PalindromeNumber {
  
  static func isPalindrome(_ x: Int) -> Bool {
    
    if x < 0 {
      return false
    }
    
    var reverseString = ""
    _ = x.description.utf8.map{Int(($0 as UInt8)) - 48}
      .reversed()
      .map { reverseString = reverseString.appending("\($0)")}
    
    if reverseString == reverseString {
      if Int(reverseString) == x {
        return true
      }
    }
    
    return false
  }
  
}
