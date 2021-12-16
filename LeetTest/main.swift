//
//  main.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/11/24.
//

import Foundation

let Rthird = TreeNode(2, nil, nil)
let Rsecond = TreeNode(2, Rthird, nil)

let Lthird = TreeNode(2, nil, nil)
let Lsecond = TreeNode(2, Lthird, nil)
let first = TreeNode(1, Lsecond, Rsecond)

print(BestTimetoBuyandSellStock().maxProfit([6,5,4,3,2,1,0,0,0,0,0,0]))

