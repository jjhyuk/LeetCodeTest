//
//  119.Pascal'sTriangleII.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/02/13.
//

import Foundation

class PascalsTriangleII {
    static func getRow(_ rowIndex: Int) -> [Int] {
      var res = [1]
      for _ in 0..<rowIndex {
        var tmp = [Int](repeating: 1, count: res.count + 1)
        for i in 1..<tmp.count - 1 {
          tmp[i] = res[i] + res[i - 1]
        }
        res = tmp
      }
      return res
    }
}
