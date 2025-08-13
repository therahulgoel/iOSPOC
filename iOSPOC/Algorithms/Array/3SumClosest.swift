//
//  3SumClosest.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 03/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
//https://leetcode.com/problems/3sum-closest/

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int { //Time : O(n^2)
    var closestSum = -99999
    //Sort the given array
    let arr:[Int] = nums.sorted()  //Time : O(nlogn)
    var left = 0, right = nums.count - 1, i = 0
    while i < arr.count{
        left = i + 1
        right = nums.count - 1
        while left < right && left < nums.count{
            let sum = arr[i] + arr[left] + arr[right]
            if sum == target{
                return sum
            }else if sum < target {
                left += 1
            }else{
                right -= 1
            }
            let diffClosest = abs(closestSum &- target)
            let diffSum = abs(sum &- target)

            if diffSum < diffClosest {
                closestSum = sum
            }
        }
        i += 1
    }
    return closestSum
}
