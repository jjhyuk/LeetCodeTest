//
//  1143.LongestCommonSubsequence.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/02/20.
//

import Foundation

class LongestCommonSubsequence {
  func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    //base check
    if(text1.isEmpty || text2.isEmpty) {
        return 0
    }

    var dp = Array(repeating:Array(repeating:0,count:text2.count + 1),count:text1.count + 1)
    let arr1 = Array(text1)
    let arr2 = Array(text2)
    for i in 1...arr1.count {
        for j in 1...arr2.count {
            if(arr1[i - 1] == arr2[j - 1]) {
                dp[i][j] =  dp[i - 1][j - 1] + 1
            }
            else {
                dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
            }
        }
    }
    return dp[arr1.count][arr2.count]
  }
}
