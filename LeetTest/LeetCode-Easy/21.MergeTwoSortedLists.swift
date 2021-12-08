//
//  21.MergeTwoSortedLists.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/12/08.
//

import Foundation



public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class MergeTwoSortedLists {
  func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    if let l1 = list1, let l2 = list2 {
      if l1.val == 0, l2.val == 0 {
        if l1.next != nil || l2.next != nil {
          return makeList(list1, list2)
        } else {
          return ListNode(0, ListNode(0))
        }
      } else {
        return makeList(list1, list2)
      }
    } else if let l1 = list1 {
      return ListNode(l1.val, l1.next)
    } else if let l2 = list2 {
      return ListNode(l2.val, l2.next)
    } else {
      return nil
    }
  }
  
  func makeList(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    if let l1 = list1, let l2 = list2 {
      if l1.val < l2.val {
        return ListNode(l1.val, makeList(l1.next, l2))
      } else {
        return ListNode(l2.val, makeList(l1, l2.next))
      }
    } else if let l1 = list1 {
      if l1.next != nil {
        return ListNode(l1.val, l1.next)
      } else {
        return ListNode(l1.val)
      }
    } else if let l2 = list2 {
      if l2.next != nil {
        return ListNode(l2.val, l2.next)
      } else {
        return ListNode(l2.val)
      }
    } else {
      return ListNode()
    }
  }
}
