//
//  206.ReverseLinkedList.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/20.
//

import Foundation


// Definition for singly-linked list.
//public class ListNode {
//  public var val: Int
//  public var next: ListNode?
//  public init() { self.val = 0; self.next = nil; }
//  public init(_ val: Int) { self.val = val; self.next = nil; }
//  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}

class ReverseLinkedList {
  func reverseList(_ head: ListNode?) -> ListNode? {
    return reculsive(head, prev: nil)
  }
  
  func reculsive(_ curruent: ListNode?, prev: ListNode?) -> ListNode? {
    if curruent == nil {
      return prev
    }
    
    var next = curruent?.next
    curruent?.next = prev
    
    return reculsive(next, prev: curruent)
  }
}
