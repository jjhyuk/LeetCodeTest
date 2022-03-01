//
//  3.LongestSubstringWithoutRepeatingCharacters.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/01.
//

import Foundation

class LongestSubstringWithoutRepeatingCharacters {
  func lengthOfLongestSubstring(_ s: String) -> Int {
    var maxTemp = 0
    var tmp = Array<Character>()
    var l = 0
    
    for c in s {
      if tmp.contains(c) {
        maxTemp = max(tmp.count, maxTemp)
        l = tmp.firstIndex(of: c)!
        tmp = tmp.suffix(tmp.count - l - 1)
        tmp.append(c)
      } else {
        tmp.append(c)
      }
    }
    return max(maxTemp, tmp.count)
  }
}
