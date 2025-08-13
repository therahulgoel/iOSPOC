//
//  Reverse Linked List.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 03/02/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

// @therahulgoel
// https://leetcode.com/problems/reverse-linked-list/description/

//Time : O(n) Using Iteration
func reverseList(_ head: ListNode?) -> ListNode? {
    var current:ListNode? = head
    var prev:ListNode? = nil
    
    while current != nil{
        let next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    
    return prev
}

//Solution 2: O(n) Using Recursion
func reverseList_(_ head: ListNode?) -> ListNode? {
    return reverseListHelper(head, nil)
}

func reverseListHelper(_ curr: ListNode?, _ prev:ListNode?) -> ListNode? {
    if curr == nil{
        return prev
    }else{
        let next = curr?.next
        curr?.next = prev
        return reverseListHelper(next, curr)
    }
}





