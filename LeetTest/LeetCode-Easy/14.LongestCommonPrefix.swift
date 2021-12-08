//
//  14.LongestCommonPrefix.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/11/24.
//

import Foundation

class LongestCommonPrefix {
  func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 0 { return "" }
    
    var minStr = (strs.min{$0.count < $1.count})!
    
    for str in strs{
      while !str.hasPrefix(minStr){
        minStr.removeLast()
      }
    }
    
    return minStr
  }
}
