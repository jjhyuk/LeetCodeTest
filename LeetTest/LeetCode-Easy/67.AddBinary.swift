//
//  67.AddBinary.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/12/10.
//

import Foundation

class AddBinary {
  func addBinary(_ a: String, _ b: String) -> String {
    let x = a.map({ c in
      Int(String(c))
    }).compactMap { $0 }.reversed().map { $0 }
    let y = b.map({ c in
      Int(String(c))
    }).compactMap { $0 }.reversed().map { $0 }
    var add = 0
    var result: Array<Int> = Array()
    for i in 0 ..< max(x.count, y.count) {
      if i >= x.count {
        if y[i] + add >= 2 {
          add = y[i] + add - 1
          result.append(add - 1)
        } else {
          result.append(y[i] + add)
          add = 0
        }
      } else if i >= y.count {
        if x[i] + add >= 2 {
          add = x[i] + add - 1
          result.append(add - 1)
        } else {
          result.append(x[i] + add)
          add = 0
        }
      } else {
        if x[i] + y[i] + add >= 2 {
          if Double((x[i] + y[i] + add)) / 2 > 1.0 {
            result.append((x[i] + y[i] + add) % 2)
            add = (x[i] + y[i] + add) % 2
          } else {
            add = x[i] + y[i] + add - 1
            result.append(add - 1)
          }
        } else {
          result.append(x[i] + y[i] + add)
          add = 0
        }
      }
    }
    if add == 1 {
      result.append(1)
    }
    return result.map { n in
      String(n)
    }.reversed()
      .map { s in
        s
      }.joined()
  }
}
