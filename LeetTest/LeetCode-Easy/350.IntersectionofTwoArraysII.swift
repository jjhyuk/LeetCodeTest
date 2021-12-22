//
//  350.IntersectionofTwoArraysII.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/22.
//

import Foundation

class IntersectionofTwoArraysII {
  func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var greater = nums1.count > nums2.count ? nums1 : nums2
    var less = nums1.count > nums2.count ? nums2 : nums1
    var result: Array<Int> = Array()
    less.forEach { n in
      if greater.contains(n) {
        if let a = greater.firstIndex(of: n) {
          greater.remove(at: a)
        }
        result.append(n)
      }
    }
    return result
  }
}
