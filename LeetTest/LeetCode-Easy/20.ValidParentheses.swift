//
//  20.ValidParentheses.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/11/24.
//

import Foundation

class ValidParentheses {
  func isValid(_ s: String) -> Bool {
    var tmpArray = Array<String>()
    s.map { c in
      String(c)
    }.forEach { s in
      if isLeft(s) {
        tmpArray.append(s)
      } else {
        if let c = tmpArray.last {
          if s == reveresString(c) {
            tmpArray.removeLast()
          } else {
            tmpArray.append(s)
          }
        } else {
          tmpArray.append(s)
        }
      }
    }
  
    return tmpArray.isEmpty
  }
  
  func isLeft(_ character: String) -> Bool {
    switch character {
    case "(":
      return true
    case "{":
      return true
    case "[":
      return true
    default:
      return false
    }
  }
  
  func reveresString(_ character: String) -> String {
    switch character {
    case "(":
      return ")"
    case "{":
      return "}"
    case "[":
      return "]"
    default:
      return ""
    }
  }
  
}
