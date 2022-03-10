//
//  347.TopKFrequentElements.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/04.
//

import Foundation

class TopKFrequentElements {
  func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    
    var tmp: Dictionary<Int, Int> = Dictionary()
    
    for num in nums {
      if let key = tmp[num] {
        tmp[num] = key + 1
      } else {
        tmp[num] = 1
      }
    }
    
    let result = tmp.sorted { dict1, dict2 in
      dict1.value > dict2.value
    }.map { $0.key }[0 ..< k]
  
    return result.sorted()
  }
}
