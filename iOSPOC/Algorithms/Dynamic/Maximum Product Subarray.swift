//
//  Maximum Product Subarray.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 27/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/maximum-product-subarray/description/

//Solution1: Brute Force O(n*n)
func maxProduct(_ nums: [Int]) -> Int {
    //Idea is to find product of all sub-arrays of given array take max
    var maxProduct = Int.min
    for i in 0..<nums.count {
        var tmp = 1
        for j in i..<nums.count{
            tmp = tmp * nums[j]
            if tmp > maxProduct{
                maxProduct = tmp
            }
        }
    }
    return maxProduct
}

//Solution2: O(n)
func maxProduct_(_ nums: [Int]) -> Int {
    return 0
}
