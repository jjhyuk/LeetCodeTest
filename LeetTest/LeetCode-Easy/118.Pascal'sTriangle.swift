//
//  118.Pascal'sTriangle.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/16.
//

import Foundation

class PascalsTriangle {
  func generate(_ numRows: Int) -> [[Int]] {
    var result: [[Int]] = Array()
    result.append([1])
    if numRows == 1 {
      return result
    }
    
    result.append([1, 1])
    if numRows == 2 {
      return result
    }
    
    for i in 2 ..< numRows {
      var array: [Int] = Array()
      for j in 0 ..< result[i - 1].count - 1 {
        array.append(result[i - 1][j] + result[i - 1][j + 1])
      }
      array.insert(1, at: 0)
      array.append(1)
      
      result.append(array)
    }
    
    return result
  }
}
