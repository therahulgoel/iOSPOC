//
//  Merge Two Sorted Lists .swift
//  iOSPOC
//
//  Created by Rahul  Goel on 31/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

// @therahulgoel
// https://leetcode.com/problems/merge-two-sorted-lists/description/

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var ptr1 = list1, ptr2 = list2, dummyPtr:ListNode? = ListNode(), finalPtr = dummyPtr
    while ptr1 != nil && ptr2 != nil{
        if ptr1!.val == ptr2!.val{ // If Both items are same
            dummyPtr?.next = ptr1
            dummyPtr = ptr1
            ptr1 = ptr1?.next

            dummyPtr?.next = ptr2
            dummyPtr = ptr2
            ptr2 = ptr2?.next
        }else if ptr1!.val < ptr2!.val{ //If Value from First LL is small
             dummyPtr?.next = ptr1
             dummyPtr = ptr1
             ptr1 = ptr1?.next
        }else{
             dummyPtr?.next = ptr2
             dummyPtr = ptr2
             ptr2 = ptr2?.next
        }
    }

    if ptr1 != nil {
        dummyPtr?.next = ptr1
    }

    if ptr2 != nil {
        dummyPtr?.next = ptr2
    }
    return finalPtr?.next
}
