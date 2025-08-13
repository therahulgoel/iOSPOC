//
//  CreateTargetArrayintheGivenOrder.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 12/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@herahulgoel
// https://leetcode.com/problems/create-target-array-in-the-given-order/

func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] { // Time : O(n)
    var result = [Int]()
    var i = 0
    while i < nums.count{
        result.insert(nums[i], at: index[i])
        i += 1
    }
    return result
}
