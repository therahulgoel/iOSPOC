//
//  Searcha2DMatrixII.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 10/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
//https://leetcode.com/problems/search-a-2d-matrix-ii/

//Solution1: Brute-Force Solution O(m*n)
func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    for row in matrix{
        for ele in row{
            if ele == target{
                return true
            }
        }
    }
    return false
}

//Solution2: Perform Binrary Search in every row - O(nLogm)
func searchMatrix_(_ matrix: [[Int]], _ target: Int) -> Bool {
    var isFound = false
    for row in matrix{
        //For each row use binary search to find element
        var start = 0, end = row.count - 1, mid = 0
        print(start, mid, end)
        while start <= end{
            mid = (start + end)/2
            print(row[mid], target)
            if row[mid] == target{
                isFound = true
                break
            }else if row[mid] > target {
                end = mid - 1
            }else if row[mid] < target{
                start = mid + 1
            }
        }
        if isFound {
            break
        }
    }
    return isFound
}

//Solution3:   O(m+n)
func searchMatrix__(_ matrix: [[Int]], _ target: Int) -> Bool {
    
    return false
}
