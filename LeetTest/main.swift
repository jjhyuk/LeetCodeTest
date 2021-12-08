//
//  main.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/11/24.
//

import Foundation

//print(ValidParentheses().isValid("{[]}"))

let node1 = ListNode()
//node1.next = ListNode(2)
//node1.next?.next = ListNode(4)

let node2 = ListNode()
//node2.next = ListNode(3)
//node2.next?.next = ListNode(4)

//print(MergeTwoSortedLists().mergeTwoLists(node1, node2))

let a = MergeTwoSortedLists().mergeTwoLists(nil, node2)
print(a?.val)
print(a?.next?.val)
print(a?.next?.next?.val)
print(a?.next?.next?.next?.val)
print(a?.next?.next?.next?.next?.val)
print(a?.next?.next?.next?.next?.next?.val)
print(a?.next?.next?.next?.next?.next?.next?.val)


