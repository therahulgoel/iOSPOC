//
//  Symmetric Tree.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 19/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

// @therahulgoel
// https://leetcode.com/problems/symmetric-tree/

//Time: O(n)
func isSymmetric(_ root: TreeNode?) -> Bool {
    if let root = root{
        var parentQueue = [TreeNode]()
        var childQueue = [TreeNode]()
        parentQueue.append(root)
        
        while !parentQueue.isEmpty{
            let item = parentQueue.removeFirst()
            
            if let left = item.left{
                childQueue.append(left)
            }else{
                if item.val != Int.min{
                    childQueue.append(TreeNode(Int.min)) //Dummy Node
                }
            }
            
            if let right = item.right{
                childQueue.append(right)
            }else{
                if item.val != Int.min{
                    childQueue.append(TreeNode(Int.min)) //Dummy Node
                }
            }
            
            if parentQueue.isEmpty && !childQueue.isEmpty{
                //Iterate though complete level and check if its palindrome
                var i = 0
                while i < childQueue.count {
                    if (childQueue[i].val != childQueue[childQueue.count - 1 - i].val) && (childQueue[i].val != Int.min) {
                       return false
                    }
                    i += 1
                }
                parentQueue.append(contentsOf: childQueue)
                childQueue.removeAll()
            }
        }
    }
    return true
}
