//
//  17.LetterCombinationsofaPhoneNumber.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/02.
//

import Foundation

class LetterCombinationsofaPhoneNumber {
  func letterCombinations(_ digits: String) -> [String] {
    
    var result = [""]
    if digits.isEmpty {
      return result
    }
    
    let dict: [Character : String] = ["2" : "abc",
                                      "3" : "def",
                                      "4" : "ghi",
                                      "5" : "jkl",
                                      "6" : "mno",
                                      "7" : "pqrs",
                                      "8" : "tuv",
                                      "9" : "wxyz"]
    
    for digit in digits {
      if let letters = dict[digit] {
        let temp = result
        result.removeAll()
        for s in temp {
          for letter in letters {
            result.append(s+String(letter))
          }
        }
      }
    }
    return result
  }
}
