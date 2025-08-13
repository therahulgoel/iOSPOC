//
//  FindtheDuplicateNumber.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 10/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/find-the-duplicate-number/

//Solution1 : Sort the array and look for repeat element O(nLogn)
func findDuplicate(_ nums: [Int]) -> Int {
    let sortedArray = nums.sorted() // O(nLogn)
    var index = 0
    
    while index < sortedArray.count {  //O(n)
        if sortedArray[index] == sortedArray[index + 1]{
            return sortedArray[index]
        }
        index += 1
    }
    return -1
}

//Solution2: Two points slow and fast O(n)
func findDuplicate_(_ nums: [Int]) -> Int {
    
    return -1
}
