//
//  100.SameTree.swift
//  LeetTest
//
//  Created by 장진혁 on 2022/03/01.
//

import Foundation

/**
 * Definition for a binary tree node.
 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
     }
 }
 */
public class SameTreeTreeNode {
    public var val: Int
    public var left: SameTreeTreeNode?
    public var right: SameTreeTreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: SameTreeTreeNode?, _ right: SameTreeTreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func isSameTree(_ p: SameTreeTreeNode?, _ q: SameTreeTreeNode?) -> Bool {
      if p == nil && q == nil {
       return true
      }
      
      if p == nil || q == nil  {
        return false
      }
      
      if p?.val != q?.val {
        return false
      }
          
      return isSameTree(p?.left, q?.left) && isSameTree(q?.right, q?.right)
    }
}
