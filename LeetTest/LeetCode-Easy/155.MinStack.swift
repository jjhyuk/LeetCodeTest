//
//  155.MinStack.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/19.
//

import Foundation
class MinStack {
  
  var array: Array<Int>
  
  init() {
    self.array = Array()
  }
  
  func push(_ val: Int) {
    self.array.append(val)
  }
  
  func pop() {
    self.array.removeLast()
  }
  
  func top() -> Int {
    if self.array.count > 0 {
      return self.array.last!
    } else {
      return 0
    }
  }
  
  func getMin() -> Int {
    self.array.sorted().first!
  }
}
