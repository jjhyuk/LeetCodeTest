//
//  46.Permutations.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/10.
//

import Foundation

class Permutations {
  func permute(_ nums: [Int]) -> [[Int]] {
    if nums.count == 1 {
      return [nums]
    }
    
    var result = Array<[Int]>()
    var n = 0
    var tmp = nums
    var perms = Array<Array<Int>>()
    for i in 0 ..< nums.count {
      n = tmp.removeFirst()
      
      perms = self.permute(tmp)
      for perm in perms {
        var tmpPerm = perm
        tmpPerm.append(n)
        result.append(tmpPerm)
      }
      tmp.append(n)
    }
    return result
  }
}
