//
//  Find Pivot Index.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 21/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgel
// https://leetcode.com/problems/find-pivot-index/description/

func pivotIndex(_ nums: [Int]) -> Int {
    var leftSum = [Int](), leftTmp = 0
    var rightSum = Array(repeating: 0, count: nums.count), rightTmp = 0
    
    //Update the left Sum Array //Time O(n)
    for ele in nums{
        leftSum.append(leftTmp)
        leftTmp += ele
    }
    
    //Update the right Sum Array //Time O(n )
    var i = nums.count - 1
    while i >= 0 {
        rightSum[i] = rightTmp
        rightTmp += nums[i]
        i -= 1
    }
    //Comapre left vs right sum for each element in given array nums
    var index = 0
    while index < nums.count{  //Time O(n)
        if leftSum[index] == rightSum[index]{
            return index
        }
        index += 1
    }
    return -1
}

