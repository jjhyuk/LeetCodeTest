//
//  125.ValidPalindrome.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/18.
//

import Foundation

class ValidPalindrome {
  
  func isPalindrome(_ s: String) -> Bool {
    let pattern = "[^A-Za-z0-9]+"
    
    let a = s.components(separatedBy: .whitespaces).joined().map { n in
      return String(n).replacingOccurrences(of: pattern, with: "", options: [.regularExpression])
    }.joined().lowercased()
    
    let b = a.reversed().map { e in
      String(e)
    }.joined()
    
    return a == b
  }
}
