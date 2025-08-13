//
//  Sort List.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 31/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

// @therahulgoel
// https://leetcode.com/problems/sort-list/

//Time: O(nLogn)
func sortList(_ head: ListNode?) -> ListNode? {
    return divideAndMerge(head)
}

func divideAndMerge(_ head: ListNode?)->ListNode?{
    if head?.next == nil{
        return head
    }
    
    // Divide list in two parts
    var slow:ListNode? = head
    var fast:ListNode? = head
    var previousSlow:ListNode? = head
    
    while fast?.next != nil{
        previousSlow = slow
        slow = slow?.next
        fast = fast?.next?.next
    }
    
    
    //To disconnect the LL
    previousSlow?.next = nil
    
    var first = head
    var second = slow
    
    let left = divideAndMerge(first)
    let right = divideAndMerge(second)
    return mergeTwoLists(left, right)
}
