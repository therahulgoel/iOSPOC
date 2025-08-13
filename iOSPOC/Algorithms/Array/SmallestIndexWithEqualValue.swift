//
//  SmallestIndexWithEqualValue.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 12/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/smallest-index-with-equal-value/

func smallestEqual(_ nums: [Int]) -> Int { //Time : O(n)
    var i  = 0
    while i < nums.count {
        if (i%10 == nums[i]){
            return i
        }
        i += 1
    }
    return -1
}
