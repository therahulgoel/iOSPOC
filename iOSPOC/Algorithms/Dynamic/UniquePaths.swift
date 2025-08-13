//
//  UniquePaths.swift
//  iOSPOC
//
//  Created by Rahul Goel on 31/05/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/unique-paths/

func uniquePaths(_ m: Int, _ n: Int) -> Int {
    var map = [String:Int]()
    return uniquePathsHelper(m - 1, n - 1, row: 0, colmn: 0, &map)
}

func uniquePathsHelper(_ m:Int, _ n:Int, row:Int, colmn:Int, _ map: inout [String:Int])->Int{
    if row == m && colmn == n{
        return 1
    }else if row > m || colmn > n{
        return 0
    }
    if let value = map["\(row)_\(colmn)"]{
        return value
    }else{
        map["\(row)_\(colmn)"]  = uniquePathsHelper(m, n, row: row + 1, colmn: colmn, &map) + uniquePathsHelper(m, n, row: row, colmn: colmn + 1, &map)
    }
    return map["\(row)_\(colmn)"] ?? 0
}
