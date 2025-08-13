//
//  MissingNumber.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 10/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
//https://leetcode.com/problems/missing-number/

//Solution1: O(n)
func missingNumber(_ nums: [Int]) -> Int {
    let totalNumbers = nums.count
    let sumOfNNumbers = totalNumbers * (totalNumbers + 1)/2
    let sumOfArray = nums.reduce(0, +) //O(n)
    return sumOfNNumbers - sumOfArray
}

//Solution2: O(nLogn)
func missingNumber_(_ nums: [Int]) -> Int {
    let sorted = nums.sorted()
    var i = 0
    for ele in sorted{
        if ele != i{
            return i
        }
        i += 1
    }
    return i
}




