//
//  121.BestTimetoBuyandSellStock.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/16.
//

import Foundation

class BestTimetoBuyandSellStock {
  func maxProfit(_ prices: [Int]) -> Int {
    if prices.count < 2 {
      return 0
    }
    
    var buy = 0
    var profit = 0
    
    for i in 0 ..< prices.count {
      let value = prices[i] - prices[buy]
      if value > profit {
        profit = value
      } else if value < 0 {
        buy = i
      }
    }
    return profit
  }
}
