//
//  Maximum Depth of Binary Tree.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 20/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/maximum-depth-of-binary-tree/

//Solution1: Time: O(n)
func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil{
        return 0
    }
    let left = maxDepth(root?.left)
    let right = maxDepth(root?.right)
    return 1 + max(left, right)
}



