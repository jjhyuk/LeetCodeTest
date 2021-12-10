//
//  69.Sqrt(x).swift
//  LeetTest
//
//  Created by 장진혁 on 2021/12/10.
//

import Foundation

class Sqrt {
  func mySqrt(_ x: Int) -> Int {
    if x == 1 {
      return 0
    }
    if x == 3 {
      return 1
    }
    var low = 2
    var high = x / 2
    while low <= high {
      let middle = (low + high) / 2
      if middle * middle == x {
        return middle
      } else if middle * middle < x {
        low = middle + 1
      } else {
        high = middle - 1
      }
    }
    return high
  }
}
