//
//  main.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/11/24.
//

import Foundation

let third = TreeNode(3, nil, nil)
let second = TreeNode(2, third, nil)
let first = TreeNode(1, nil, second)

print(BinaryTreeInorderTraversal().inorderTraversal(first))

