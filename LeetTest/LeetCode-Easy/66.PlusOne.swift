//
//  66.PlusOne.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/12/09.
//

import Foundation

class PlusOne {
  func plusOne(_ digits: [Int]) -> [Int] {
    var sum = 1
    var result = digits.map { n -> String in
      return String(n)
    }.reduce("") { partialResult, n -> String in
      partialResult.appending(n)
    }.reversed().compactMap { n -> String in
      if Int(String(n))! + sum == 10 {
        return "0"
      } else {
        let ee = Int(String(n))! + sum
        sum = 0
        return String(ee)
      }
    }
    if sum == 1 {
      result.append("1")
    }
    
    return result.reversed().compactMap { n -> Int in
      Int(n)!
    }
  }
}
