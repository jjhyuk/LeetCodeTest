//
//  main.swift
//  LeetTest
//
//  Created by 장진혁 on 2021/11/24.
//

import Foundation
//
let Rforth = TreeNode(5, nil, nil)
let Rsecond = TreeNode(2, nil, nil)
let Rthird = TreeNode(3, Rforth, nil)
let Rfirst = TreeNode(1, Rthird, Rsecond)


let Lforth = TreeNode(4, nil, nil)
let Lfifth = TreeNode(7, nil, nil)
let Lsecond = TreeNode(1, nil, Lforth)
let Lthird = TreeNode(3, nil, Lfifth)
let Lfirst = TreeNode(2, Lsecond, Lthird)

//print(CoinChange().coinChange([1,3,4,5], 7))


let a = SwapNodesinPairsListNode(4, nil)
let b = SwapNodesinPairsListNode(3, a)
let c = SwapNodesinPairsListNode(2, b)
let d = SwapNodesinPairsListNode(1, c)

let array = [1,1,1,2,2,3]
let k = 2
print(TopKFrequentElements().topKFrequent(array, 2))
