//
//  Binary Tree Level Order Traversal.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 17/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/binary-tree-level-order-traversal/

//TIme : O(n)
func levelOrder(_ root: TreeNode?) -> [[Int]] {
   var traversal = [[Int]]()
   if let root = root{
       var parentQueue = [TreeNode]()
       var childQueue = [TreeNode]()
       parentQueue.append(root)
       traversal.append([root.val])
       
       while !parentQueue.isEmpty{
           let first = parentQueue.removeFirst()
           
           if let left = first.left{
               childQueue.append(left)
           }
           if let right = first.right{
               childQueue.append(right)
           }
           
           if parentQueue.isEmpty && !childQueue.isEmpty{
               var tmp = [Int]()
               for ele in childQueue{
                   tmp.append(ele.val)
               }
               traversal.append(tmp)
               parentQueue.append(contentsOf: childQueue)
               childQueue.removeAll()
           }
       }
   }
   return traversal
}
