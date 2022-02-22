//
//  91.DecodeWays.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/02/22.
//

import Foundation

class DecodeWays {
  func numDecodings(_ s: String) -> Int {
      guard let char = s.first, char != "0" else { return 0 }
      
      var arr = Array(s)
      var dp = Array<Int>(repeating: 0, count: s.count + 1)
      
      dp[dp.count - 1] = 1
      
      for i in stride(from: dp.count - 2, through: 0, by: -1) {
          if arr[i] == "0" {
              guard let val = arr[i - 1].wholeNumberValue, val < 3 else { return 0 }
              dp[i] = 0
          } else {
              dp[i] = dp[i + 1]
              if i+1 < arr.count, let val = Int(String(arr[i...i+1])), val < 27 {
                 dp[i] += dp[i + 2]
              }
          }
      }
      return dp[0]
  }  
}
