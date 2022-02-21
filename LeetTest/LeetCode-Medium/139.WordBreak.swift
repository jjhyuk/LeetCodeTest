//
//  139.WordBreak.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/02/13.
// 1

import Foundation

class WordBreak {
  func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
    
    var solutions = Array(repeating: false, count: s.count + 1)
    solutions[s.count] = true
    
    for i in stride(from: solutions.count - 1, to: -1, by: -1) {
      for w in wordDict {
        if (i + w.count) <= s.count && s.subString(from: i, to: i + w.count) == w {
          solutions[i] = solutions[i + w.count]
        }
        
        if solutions[i] {
          break
        }
      }
    }
    
    return solutions[0]
  }
}

extension String {
  func subString(from: Int, to: Int) -> String {
    let startIndex = self.index(self.startIndex, offsetBy: from)
    let endIndex = self.index(self.startIndex, offsetBy: to)
    return String(self[startIndex..<endIndex])
  }
}
