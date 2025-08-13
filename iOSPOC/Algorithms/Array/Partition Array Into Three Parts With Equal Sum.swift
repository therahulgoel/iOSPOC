//
//  Partition Array Into Three Parts With Equal Sum.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 21/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@thrahulgoel
// https://leetcode.com/problems/partition-array-into-three-parts-with-equal-sum/

func canThreePartsEqualSum(_ arr: [Int]) -> Bool { //Time : O(n)
    var totalSum = 0
    var leftSum = [Int](), sum = 0
    
    //Count Total Sum of given arr
    for ele in arr {
        totalSum += ele
    }
    
    //If Total sum is not multiple of 3 return false
    if totalSum%3 != 0{
        return false
    }
    
    //Create the Left Sum array for given numbers
    for ele in arr{
        leftSum.append(sum)
        sum += ele
    }
    
    //Check if there exists 2 elements that are Prefix totalSum/3 and 2*totalSum/3
    var totalElements = 0
    for ele in leftSum{
        if ele == totalSum/3 || ele == 2*totalSum/3 {
            totalElements += 1
        }
    }
    
    return totalElements == 2
}
