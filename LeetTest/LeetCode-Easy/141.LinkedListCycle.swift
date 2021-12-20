//
//  141.LinkedListCycle.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/19.
//

import Foundation

//Definition for singly-linked list.
//public class ListNode {
//  public var val: Int
//  public var next: ListNode?
//  public init(_ val: Int) {
//    self.val = val
//    self.next = nil
//  }
//}


class LinkedListCycle {
  func hasCycle(_ head: ListNode?) -> Bool {
    
    var result: Array<UnsafeRawPointer> = Array()
    
    return recursive(head, result: &result)
  }
  
  func recursive(_ node: ListNode?, result: inout [UnsafeRawPointer]) -> Bool {
    
    if let node = node {
      if node.next != nil {
        let a = UnsafeRawPointer(Unmanaged.passUnretained(node).toOpaque())
        if result.contains(a) {
          return true
        } else {
          result.append(UnsafeRawPointer(Unmanaged.passUnretained(node).toOpaque()))
          return recursive(node.next, result: &result)
        }
      } else {
        return false
      }
    } else {
      return false
    }
  }
}
