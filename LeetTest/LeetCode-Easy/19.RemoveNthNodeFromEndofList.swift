//
//  19.RemoveNthNodeFromEndofList.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/01.
//

import Foundation

public class RemoveNthNodeFromEndofListListNode {
  public var val: Int
  public var next: RemoveNthNodeFromEndofListListNode?
  public init() {
    self.val = 0; self.next = nil;
  }
  
  public init(_ val: Int) {
    self.val = val; self.next = nil;
  }
  
  public init(_ val: Int, _ next: RemoveNthNodeFromEndofListListNode?) {
    self.val = val; self.next = next;
  }
}

class RemoveNthNodeFromEndofList {
  func removeNthFromEnd(_ head: RemoveNthNodeFromEndofListListNode?, _ n: Int) -> RemoveNthNodeFromEndofListListNode? {
    let dummy = RemoveNthNodeFromEndofListListNode(0, head)
    
    var left = dummy
    var right = head
    
    var index = n
    
    while index > 0 && right != nil {
      right = right?.next
      index -= 1
    }
    
    while right != nil {
      left = left.next!
      right = right?.next
    }
    
    left.next = left.next?.next
    return dummy.next
  }
}
