//
//  617.MergeTwoBinaryTrees.swift
//  LeetTest
//
//  Created by jinhyuk on 2021/12/29.
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

class MergeTwoBinaryTrees {
  func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
    return recursive(root1: root1, root2: root2)
  }
  
  func recursive(root1: TreeNode?, root2: TreeNode?) -> TreeNode? {
    if root1 == nil, root2 == nil {
      return nil
    }
    
    let root = TreeNode((root1?.val ?? 0) + (root2?.val ?? 0))
    root.left = recursive(root1: root1?.left, root2: root2?.left)
    root.right = recursive(root1: root1?.right, root2: root2?.right)
    
    return root
  }
}
