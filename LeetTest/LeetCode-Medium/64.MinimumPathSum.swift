//
//  64.MinimumPathSum.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/04.
//

import Foundation

class MinimumPathSum {
  func minPathSum(_ grid: [[Int]]) -> Int {
    var dp = Array(repeating: Array(repeating: 0, count: grid.last!.count), count: grid.count)
    dp[grid.count - 1][grid[0].count - 1] = grid[grid.count - 1][grid.last!.count - 1]
    
    for i in stride(from: grid.count - 1, to: -1, by: -1) {
      for j in stride(from: grid.last!.count - 1, to: -1, by: -1) {
        if i == grid.count - 1 && j != grid.last!.count - 1 {
          dp[i][j] = dp[i][j + 1] + grid[i][j]
        } else if j == grid.last!.count - 1 && i != grid.count - 1 {
          dp[i][j] = dp[i + 1][j] + grid[i][j]
        } else if i != grid.count - 1 && j != grid.last!.count - 1 {
          dp[i][j] = min(dp[i][j + 1], dp[i + 1][j]) + grid[i][j]
        }
      }
    }
    return dp[0][0]
  }
}
