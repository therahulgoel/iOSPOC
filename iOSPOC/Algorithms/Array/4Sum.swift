//
//  4Sum.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 11/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/4sum/description/

func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] { //Time : O(n^3)
    var result = Set<[Int]>()
    //Sort the array
    let sortedNums = nums.sorted() // TIme : O(nLogn)
    var i = 0, j = 0, left = 0, right = 0
    
    while i < sortedNums.count{ //Time : O(n^3)
        j = i + 1
        while j < sortedNums.count{
            left = j + 1
            right = sortedNums.count - 1
            while left < right{
                let sum = sortedNums[j] + sortedNums[left] + sortedNums[right] + sortedNums[i]
                if sum == target {
                    result.insert([sortedNums[j], sortedNums[left], sortedNums[right], sortedNums[i]])
                    left += 1
                    right -= 1
                }else if sum < target{
                        left += 1
                }else{
                    right -= 1
                }
            }
            j += 1
        }
        i += 1
    }
    return Array(result)
 }
