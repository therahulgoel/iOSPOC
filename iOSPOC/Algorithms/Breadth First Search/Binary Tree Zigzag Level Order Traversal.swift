//
//  Binary Tree Zigzag Level Order Traversal.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 18/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/

//Time: O(n)
func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
    var traversal = [[Int]]()
    if let root = root{
        var parentQueue = [TreeNode]()
        var childQueue = [TreeNode]()
        var fromRight = true
        
        parentQueue.append(root)
        traversal.append([root.val])
        
        while !parentQueue.isEmpty{
            let node = parentQueue.removeFirst()
            if let left = node.left{
                childQueue.append(left)
            }
            if let right = node.right{
                childQueue.append(right)
            }
            
            //Store Info for Level Below
            if parentQueue.isEmpty && !childQueue.isEmpty{
                var tmp = [Int]()
                if fromRight{
                    for ele in childQueue.reversed(){
                        tmp.append(ele.val)
                    }
                }else{
                    for ele in childQueue{
                        tmp.append(ele.val)
                    }
                }
                fromRight = !fromRight
                traversal.append(tmp)
                parentQueue.append(contentsOf: childQueue)
                childQueue.removeAll()
            }
        }
    }
    return traversal
}
