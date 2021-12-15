//
//  94.BinaryTreeInorderTraversal.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/15.
//

import Foundation


// Definition for a binary tree node.
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

class BinaryTreeInorderTraversal {
  func inorderTraversal(_ root: TreeNode?) -> [Int] {
    if root == nil {
      return []
    }
    
    var visitNode: [Int] = Array()
    search(root, visitNode: &visitNode)
    
    return visitNode
  }
  
  func search(_ node: TreeNode?, visitNode: inout [Int]) {
    guard let node = node else {
      return
    }
    search(node.left, visitNode: &visitNode)
    visitNode.append(node.val)
    search(node.right, visitNode: &visitNode)
  }
}
