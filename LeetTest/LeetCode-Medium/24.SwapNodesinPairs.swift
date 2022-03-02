//
//  24.SwapNodesinPairs.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/02.
//

import Foundation

public class SwapNodesinPairsListNode {
  public var val: Int
  public var next: SwapNodesinPairsListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: SwapNodesinPairsListNode?) { self.val = val; self.next = next; }
}

class SwapNodesinPairs {
  func swapPairs(_ head: SwapNodesinPairsListNode?) -> SwapNodesinPairsListNode? {
      guard let h = head else {
          return head
      }
      
      var curr: SwapNodesinPairsListNode? = h
      while curr != nil {
          if let tmp = curr?.val, let nextVal = curr?.next?.val {
              curr?.val = nextVal
              curr?.next?.val = tmp
          }
          
          curr = curr?.next?.next
      }
      
      return h
  }
}
