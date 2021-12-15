//
//  101.SymmetricTree.swift
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

class SymmetricTree {
  func isSymmetric(_ root: TreeNode?) -> Bool {
  
    var leftResult: [Int] = Array()
    var rightResult: [Int] = Array()
    
    searchLeftNode(root?.left, visitNode: &leftResult)
    searchRightNode(root?.right, visitNode: &rightResult)
    
    return leftResult == rightResult
  }
  
  func searchLeftNode(_ node: TreeNode?, visitNode: inout [Int]) {
    guard let node = node else {
      visitNode.append(-999)
      return
    }
    
    searchLeftNode(node.left, visitNode: &visitNode)
    searchLeftNode(node.right, visitNode: &visitNode)
    visitNode.append(node.val)
  }
  
  func searchRightNode(_ node: TreeNode?, visitNode: inout [Int]) {
    guard let node = node else {
      visitNode.append(-999)
      return
    }
    searchRightNode(node.right, visitNode: &visitNode)
    searchRightNode(node.left, visitNode: &visitNode)
    visitNode.append(node.val)
  }
  
}
