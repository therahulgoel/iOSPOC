//
//  Populating Next Right Pointers in Each Node.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 18/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/populating-next-right-pointers-in-each-node/

class bNode {
     var val: Int
     var left: bNode?
     var right: bNode?
     var next: bNode?
     init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
         self.next = nil
     }
 }

//Solution1: O(2*n)
func connect(_ root: bNode?) -> bNode? {
    if let root = root{
        var parentQueue = [bNode]()
        var childQueue = [bNode]()
        parentQueue.append(root)
        
        while !parentQueue.isEmpty{
            let item = parentQueue.removeFirst()
            
            if let left = item.left{
                childQueue.append(left)
            }
            if let right = item.right{
                childQueue.append(right)
            }
            
            if parentQueue.isEmpty && !childQueue.isEmpty{
                var i = 0
                while i < childQueue.count - 1{
                    childQueue[i].next = childQueue[i + 1]
                    i += 1
                }
                parentQueue.append(contentsOf: childQueue)
                childQueue.removeAll()
            }
        }
    }
    return root
}

//Solution 2 : O(n) Without Using parent and child Queue
func connect_(_ root: bNode?) -> bNode? {
    if let root = root{
        var parentQueue = [bNode]()
        parentQueue.append(root)
        while !parentQueue.isEmpty{
            let size = parentQueue.count
            var prevPtr: bNode?
            for _ in 0..<size {
                let item = parentQueue.removeFirst()
                prevPtr?.next = item
                prevPtr = item
                
                if let left = item.left{
                    parentQueue.append(left)
                }
                if let right = item.right{
                    parentQueue.append(right)
                }
            }
        }
    }
    return root
}
