//
//  Subarray SumEqualsK.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 14/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/subarray-sum-equals-k/

func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var count = 0, sum = 0
    var map:[Int:Int] = [Int:Int]()
    for (index, number) in nums.enumerated(){
        sum += number
        if sum == k{
            count += 1
        }
        if let value = map[sum - k]{
            count = count + value
        }
        if let val = map[sum]{
            map[sum] = val + 1
        }else{
            map[sum] = 1
        }
    }
    return count
 }
