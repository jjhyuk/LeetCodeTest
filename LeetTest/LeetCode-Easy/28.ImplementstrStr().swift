//
//  28.ImplementstrStr().swift
//  LeetTest
//
//  Created by 장진혁 on 2021/12/09.
//

import Foundation

class ImplementstrStr {
  func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.count == 0  {
      return 0
    }
    if haystack.contains(needle) {
      return haystack.range(of: needle)?.lowerBound.utf16Offset(in: haystack) ?? 0
    } else {
      return -1
    }
  }
}
