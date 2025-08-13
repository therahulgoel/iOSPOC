//
//  Count of Smaller Numbers After Self.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 10/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
//https://leetcode.com/problems/count-of-smaller-numbers-after-self/

//Solution1: Brute Force O(m*n)
func countSmaller(_ nums: [Int]) -> [Int] {
   var result = [Int]()
   var i = 0, j = 0
   while i < nums.count{
       j = i + 1
       var count = 0
       while j < nums.count{
           if nums[i] > nums[j]{
               count += 1
           }
           j += 1
       }
       result.append(count)
       i += 1
   }
   return result
}

//Solution2: Using Merge Sort O(nLogn)
func countSmaller_(_ nums: [Int]) -> [Int] {
    var indexes = [(Int,Int)]()
    var result = [Int:(Int,Int)]()
    //Store Element with indexes
    for (ind, ele) in nums.enumerated(){
        indexes.append((ele, ind))
        result[ele] = (ind, 0)
    }
    let a = countSmallerHelper(indexes, &result)
    print(a)
    return [] //O(nLogn)
}

func countSmallerHelper(_ nums: [(Int,Int)], _ result:inout [Int:(Int,Int)])->[(Int,Int)]{
    if nums.count <= 1{
        return nums
    }
    let middleIndex = (nums.count - 1)/2
    let left = countSmallerHelper(Array(nums[0...middleIndex]), &result) //O(logn)
    let right = countSmallerHelper(Array(nums[(middleIndex + 1)...(nums.count - 1)]), &result) //O(logn)
    return mergeSortedSubArrays(left, right, &result)
}

//Time: O(n)
func mergeSortedSubArrays(_ left:[(Int,Int)], _ right:[(Int,Int)], _ result:inout [Int:(Int,Int)])->[(Int,Int)]{
    var i = 0
    var j = 0
    var tmp = [(Int,Int)]()
    while i < left.count && j < right.count{
        //If both are same
        if left[i].0 == right[j].0{
            tmp.append(contentsOf: [left[i], right[j]])
            i += 1
            j += 1
        }else if left[i].0 < right[j].0{
            tmp.append(left[i])
            i += 1
        }else if left[i].0 > right[j].0{ //Count Smaller than Self Here and store
            tmp.append(right[j])
            result[left[i].0] = (result[left[i].0]!.0, result[left[i].0]!.1 + 1)
            j += 1
        }
    }
    
    while i < left.count{
        tmp.append(left[i])
        i += 1
    }
    while j < right.count{
        tmp.append(right[j])
        j  += 1
    }
    return tmp
}
