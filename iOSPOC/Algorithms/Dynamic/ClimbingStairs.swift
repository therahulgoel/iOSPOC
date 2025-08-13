//
//  ClimbingStairs.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 09/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
//https://leetcode.com/problems/climbing-stairs/

//Solution1: Start From Top Using DP
func climbStairs(_ n: Int) -> Int {
    var memo = [Int:Int]()
    return clibmStairsInternal(n, &memo)
}

func clibmStairsInternal(_ num:Int, _ memo:inout [Int:Int])->Int{
    if num <= 1 {
        //Increment 1 to number of paths
        return 1
    }else{
        if let lookedUpValue = memo[num]{ //Return From Memo
            return lookedUpValue
        }else{ //Calculate and store it in memo for future
         memo[num] = clibmStairsInternal(num - 1, &memo) + clibmStairsInternal(num-2, &memo)
         return memo[num] ?? 0
        }
    }
}

//Solution2: Star From Bottom Using DP
func climbStairs_(_ n: Int) -> Int {
    var memo = [Int:Int]()
    return climbStairsHelper(n, 0, &memo)
}

func climbStairsHelper(_ n:Int, _ total:Int, _ memo: inout [Int:Int])->Int{
    if total > n {
        return 0
    }else if total == n{
        return 1
    }
    if let value = memo[total]{
        return value
    }
    memo[total] =  climbStairsHelper(n, total + 1, &memo) + climbStairsHelper(n, total + 2, &memo)
    return memo[total]!
}
