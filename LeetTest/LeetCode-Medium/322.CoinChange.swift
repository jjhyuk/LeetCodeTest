//
//  322.CoinChange.swift
//  LeetTest
//
//  Created by jinhyuk on 2022/01/11.
//

import Foundation

class CoinChange {
  func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    guard amount > 0 else { return 0 }
    
    print(coins)
    var solutions = Array(repeating: amount + 1, count: amount + 1)
    let sortedCoins = coins.sorted()
    
    solutions[0] = 0
    
    for currentAmount in 1...amount {
      for coin in sortedCoins where coin <= currentAmount {
        print(currentAmount)
        solutions[currentAmount] = min(solutions[currentAmount], 1 + solutions[currentAmount - coin])
        print(solutions)
      }
    }
    
    return solutions[amount] < amount + 1 ? solutions[amount] : -1
  }
}
