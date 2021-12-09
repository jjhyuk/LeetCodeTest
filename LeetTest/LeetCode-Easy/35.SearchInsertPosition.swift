//
//  35.SearchInsertPosition.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/12/09.
//

import Foundation

class SearchInsertPosition {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
      var result = nums.count
      for i in 0 ..< nums.count {
        if nums[i] == target {
          result = i
          break;
        } else if nums[i] > target {
          if i < 1 {
            result = 0
          } else {
            result = i
          }
          break
        }
      }
      return result
    }
}
