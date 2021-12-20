//
//  171.ExcelSheetColumnNumber.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/20.
//

import Foundation

class ExcelSheetColumnNumber {
  func titleToNumber(_ columnTitle: String) -> Int {
    let a = columnTitle
      .map { $0.asciiValue }
      .map { Int($0!) - 64 }
      .compactMap { $0 }
      .reversed()
      .map { Int($0) }
    var result = 0
    for i in 0 ..< a.count {
      result = result + a[i] * Int(pow(Double(26), Double(i)))
    }
    return result
  }
}
