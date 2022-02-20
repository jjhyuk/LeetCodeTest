//
//  322.CoinChange.swift
//  LeetTest
//
//  Created by jinhyuk on 2022/02/20
//

import Foundation

// https://youtu.be/H9bfqozjoqs
// Dynamic Programming 사용
// DP Bottom up
class CoinChange {
  func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    guard amount > 0 else { return 0 }
     
    var solutions = Array(repeating: amount + 1, count: amount + 1)
    let sortedCoins = coins.sorted()
    
    solutions[0] = 0
    
    // 각 solution Array의 index 값: index 값을 가지구 위한 최소 값
    // ex 1) index = 5, coins = [1,3,4,5] 상황에서 최소값은 '5' = 즉 '1'
    // ex 2) index = 2, conis [1,3,4,5] 상황에서 1 + dp[index - 1] 값을 가짐
    for currentAmount in 1...amount {
      for coin in sortedCoins {
        if currentAmount - coin >= 0 {
         solutions[currentAmount] = min(solutions[currentAmount], 1 + solutions[currentAmount - coin])
        }
      }
    }
    
    return solutions[amount] < amount + 1 ? solutions[amount] : -1
  }
}
