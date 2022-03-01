//
//  49.GroupAnagrams.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/01.
//

import Foundation

class GroupAnagrams {
  func groupAnagrams(_ strs: [String]) -> [[String]] {    
    var temp = Dictionary<String, [String]>()
    
    for i in 0 ..< strs.count {
      let key = strs[i].sorted().reduce("") { partialResult, c in
        return partialResult.appending(String(c))
      }
      if temp[key] == nil {
        temp[key] = [strs[i]]
      } else {
        temp[key]?.append(strs[i])
      }
    }

    return Array(temp.values)
  }
}
