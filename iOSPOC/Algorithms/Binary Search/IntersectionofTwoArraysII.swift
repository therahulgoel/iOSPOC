//
//  IntersectionofTwoArraysII.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 10/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
//https://leetcode.com/problems/intersection-of-two-arrays-ii/

//Solution 1: With Hash Map O(n)
func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var freqMap1 = [Int:Int]()
    var freqMap2 = [Int:Int]()
    var result = [Int]()
    
    //To create Freq Map of num1 O(n)
    for ele in nums1{
        if let value = freqMap1[ele]{
            freqMap1[ele] = value + 1
        }else{
            freqMap1[ele] = 1
        }
    }
    
    //To create Freq Map of num2 O(n)
    for ele in nums2{
        if let value = freqMap2[ele]{
            freqMap2[ele] = value + 1
        }else{
            freqMap2[ele] = 1
        }
    }
    
    //find min of both freq and add to result with element //O(n)
    for elementNum1 in freqMap1{
        if let valueNum2 = freqMap2[elementNum1.key]{
            let min = min(valueNum2, elementNum1.value)
            for _ in 1...min{
                result.append(elementNum1.key)
            }
        }
    }
    return result
}
