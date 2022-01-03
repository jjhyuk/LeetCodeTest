//
//  234.PalindromeLinkedList.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/21.
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

//class PalindromeLinkedList {
//  func isPalindrome(_ head: ListNode?) -> Bool {
//    var result: Array<Int> = Array()
//    recursive(head, result: &result)
//    var left: Array<Int> = Array()
//    var right: Array<Int> = Array()
//    if result.count % 2 == 0 {
//      left = Array(result[0 ..< (result.count/2)])
//      right = Array(result[result.count/2 ..< result.count]).reversed().map({ n in
//        Int(n)
//      })
//      return left == right
//    } else {
//      left = Array(result[0 ..< (result.count/2)])
//      right = Array(result[result.count/2 + 1 ..< result.count]).reversed().map({ n in
//        Int(n)
//      })
//      return left == right
//    }
//  }
//  
//  func recursive(_ node: ListNode?, result: inout [Int]) {
//    if let node = node {
//      result.append(node.val)
//      return recursive(node.next, result: &result)
//    } else {
//      return
//    }
//  }
//}
