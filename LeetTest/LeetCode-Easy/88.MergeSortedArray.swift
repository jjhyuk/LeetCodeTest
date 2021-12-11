//
//  88.MergeSortedArray.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/11.
//

import Foundation

class MergeSortedArray {
  func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    nums1 = (nums1 + nums2)
      .sorted()
    var count = nums1.count - (m + n)
    if count != 0 {
      nums1 = nums1.filter { n in
        if count != 0 {
          if n == 0 {
            count -= 1
            return false
          }
          return n != 0
        }
        return true
      }
    }
  }
}
