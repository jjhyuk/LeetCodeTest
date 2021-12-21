//
//  326.PowerofThree.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/21.
//

import Foundation

class PowerofThree {
  func isPowerOfThree(_ n: Int) -> Bool {
    if n == 3 || n == 1 {
      return true
    }
    
    return recursive(Double(n))
  }
  
  func recursive(_ n: Double) -> Bool {
    let a: Double = Double(n) / 3.0
    if a == 3 {
      return true
    } else if a > 3 {
      return recursive(a)
    } else {
      return false
    }
  }
}
