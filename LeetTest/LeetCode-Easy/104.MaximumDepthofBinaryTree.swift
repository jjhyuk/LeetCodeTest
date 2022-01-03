//
//  104.MaximumDepthofBinaryTree.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/15.
//

import Foundation

// Definition for a binary tree node.
//public class TreeNode {
//  public var val: Int
//  public var left: TreeNode?
//  public var right: TreeNode?
//  public init() { self.val = 0; self.left = nil; self.right = nil; }
//  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//    self.val = val
//    self.left = left
//    self.right = right
//  }
//}

class MaximumDepthofBinaryTree {
  func maxDepth(_ root: TreeNode?) -> Int {
    
    return searchLeftNode(root) - 1
  }
  
  func searchLeftNode(_ node: TreeNode?) -> Int  {
    guard let node = node else {
      return 1
    }
    return max(searchLeftNode(node.left), searchLeftNode(node.right)) + 1
  }
  
}
