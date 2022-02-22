//
//  62.UniquePaths.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/02/22.
//

import Foundation

class UniquePaths {
  func uniquePaths(_ m: Int, _ n: Int) -> Int {
    var array = Array(repeating: Array(repeating: 0, count: n), count: m)
    for i in 0 ..< m  {
      array[i].removeLast()
      array[i].append(1)
      if i == m - 1 {
        array[i] = Array(repeating: 1, count: n)
      }
    }
    for i in stride(from: m - 2, to: -1, by: -1) {
      for j in stride(from: n - 2, to: -1, by: -1) {
        print("\(i),\(j)")
        array[i][j] = array[i+1][j] + array[i][j+1]
      }
    }
    
    return array[0][0]
  }
}
