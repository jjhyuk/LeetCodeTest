//
//  main.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/11/24.
//

import Foundation
//
//let Rthird = TreeNode(2, nil, nil)
//let Rsecond = TreeNode(2, Rthird, nil)
//
//let Lthird = TreeNode(2, nil, nil)
//let Lsecond = TreeNode(2, Lthird, nil)
//let first = TreeNode(1, Lsecond, Rsecond)

let a = ListNode(1)
let b = ListNode(2)
let c = ListNode(3)
let d = ListNode(4)
let e = ListNode(5)
a.next = b
b.next = c
c.next = d
d.next = e

print(MissingNumber().missingNumber([0,1]))

