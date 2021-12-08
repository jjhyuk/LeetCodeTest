//
//  13.RomantoInteger.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/11/24.
//

import Foundation

class RomantoInteger {
  
  func romanToInt(_ s: String) -> Int {
    
    var a = s.map { $0 }
      .map({ makeInterger(romanInterger: $0) })
      
    for i in 0 ..< a.count {
      if i + 1 != a.count {
        if a[i] < a[i+1] {
          a[i] = -a[i]
        }
      }
    }
    
    return a.reduce(0, { $0 + $1 })
  }
  
  func makeInterger(romanInterger: Character) -> Int {
    switch romanInterger {
    case "I":
      return 1
    case "V":
      return 5
    case "X":
      return 10
    case "L":
      return 50
    case "C":
      return 100
    case "D":
      return 500
    case "M":
      return 1000
    default:
      return 0
    }
  }
  
}
