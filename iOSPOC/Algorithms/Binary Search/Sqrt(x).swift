//
//  Sqrt(x).swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 01/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
//https://leetcode.com/problems/sqrtx/

func mySqrt(_ x: Int) -> Int {
    if x == 0 || x == 1{
        return x
    }
  //since sqrt of any number can not be greater than its half O(logn)
  //thus taking end = x/2
  var start = 0, mid = 0, end = x/2
    var floorValue = 0
    while start <= end{
        mid = (start + end)/2
        if (mid*mid == x){
            return mid
        }else if (mid*mid < x){
            start = mid + 1
            floorValue = mid
        }else{
            end = mid - 1
        }
    }
    return floorValue
}
