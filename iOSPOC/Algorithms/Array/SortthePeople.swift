//
//  SortthePeople.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 30/10/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

// https://leetcode.com/problems/sort-the-people/

func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
    var map:[Int:String] = [Int:String]()
     var i = 0
     while i < names.count{
         map[heights[i]] = names[i]
         i += 1
     }
     //Sort the dictionary based on height
     let a = map.sorted { val1, val2 in
         val1.key > val2.key
     }
     var output = [String]()
     for ele in a{
         let name = ele.value
         output.append(name)
         print(name)
     }
     return output
}
