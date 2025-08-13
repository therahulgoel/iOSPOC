//
//  Number of Islands.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 18/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/number-of-islands/

//Time: Using DFS
func numIslands(_ grid: [[Character]]) -> Int {
    let rows = grid.count
    let columns = grid[0].count
    var numOflands = 0
    var matrix = grid
    
    for i in 0..<rows{
        for j in 0..<columns{
            if matrix[i][j] == "1"{
                numIslandsDfs(&matrix, i, j, rows - 1, columns - 1)
                numOflands += 1
            }
        }
    }
    return numOflands
}

//To mark the teritory of certian Island
func numIslandsDfs(_ ele:inout [[Character]],_ i:Int,_ j:Int,_ row:Int,_ column:Int) {
    if i > row || j > column || i < 0 || j < 0 || ele[i][j] == "0" || ele[i][j] == "X"{
        return
    }
    ele[i][j] = "X"
    numIslandsDfs(&ele, i - 1, j, row, column)
    numIslandsDfs(&ele, i, j - 1, row, column)
    numIslandsDfs(&ele, i + 1, j, row, column)
    numIslandsDfs(&ele, i, j + 1, row, column)
}
