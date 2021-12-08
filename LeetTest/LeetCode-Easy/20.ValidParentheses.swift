//
//  20.ValidParentheses.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/11/24.
//

import Foundation

class ValidParentheses {
  func isValid(_ s: String) -> Bool {
    
    if s.count < 2 {
      return false
    }
    var result = false
    var a = s.map { String($0) }
    var b = Array<String>()
    for str in a {
      if b.isEmpty {
        b.append("\(str)")
      }

      if !isAdd("\(str)") {
        if compare(b.last!, s2: str) {
         result = true
          b.popLast()
          b.popLast()
        } else {
          result = false
          break
        }
      } else {
        b.append("\(str)")
        result = true
      }
    }
    
    return b.isEmpty ? result : false
  }
  
  func isAdd(_ s: String) -> Bool {
    if s == "{" || s == "(" || s == "[" {
      return true
    } else {
      return false
    }
  }
  
  func compare(_ s1: String, s2: String) -> Bool {
    
    if s1 == "{" && s2 == "}" {
      return true
    }
    else if s1 == "(" && s2 == ")" {
      return true
    }
    else if s1 == "[" && s2 == "]" {
      return true
    }
    else {
      return false
    }
  }
}
