//
//  58.LengthofLastWord.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/12/09.
//

import Foundation

class LengthofLastWord {
  func lengthOfLastWord(_ s: String) -> Int {
    if let last = s.split(separator: " ").last {
      return last.count
    } else {
      return 0
    }
  }
}
