//
//  Add Two Numbers.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 22/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/add-two-numbers/

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? { //Time : O(n)
    let carry = ListNode(0)
    var l1Ptr = l1, l2Ptr = l2, previousPtr = l1
    
    while l1Ptr != nil || l2Ptr != nil{
        var sum = carry.val
        if let value1 = l1Ptr?.val{
            sum = sum + value1
        }
        if let value2 = l2Ptr?.val{
            sum = sum + value2
        }
        carry.val = sum/10

        //We would use l1 number for final sum
        if l1Ptr != nil{
            previousPtr = l1Ptr
            l1Ptr?.val = sum%10
        }else{ // Once L1 number is done we would connect l2 node to l1 nodes for final sum
            previousPtr?.next = l2Ptr
            previousPtr = l2Ptr
            l2Ptr?.val = sum%10
        }
        l1Ptr = l1Ptr?.next
        l2Ptr = l2Ptr?.next
    }

    //Add carry in the end
    if carry.val > 0{
        previousPtr?.next = ListNode(carry.val)
    }
    return l1
}



