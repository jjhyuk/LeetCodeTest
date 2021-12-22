//
//  412.FizzBuzz.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/22.
//

import Foundation

class FizzBuzz {
  func fizzBuzz(_ n: Int) -> [String] {
    var result: Array<String> = Array()
    for i in 0 ..< n {
      if (i + 1) % 15 == 0 {
        result.append("FizzBuzz")
      } else if (i + 1) % 5 == 0 {
        result.append("Buzz")
      } else if (i + 1) % 3 == 0 {
        result.append("Fizz")
      } else {
        result.append("\(i + 1)")
      }
    }
    return result
  }
}
