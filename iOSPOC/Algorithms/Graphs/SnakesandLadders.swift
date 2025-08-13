//
//  SnakesandLadders.swift
//  iOSPOC
//
//  Created by Rahul Goel on 05/06/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/snakes-and-ladders/

typealias pair = (x:Int,y:Int)
func snakesAndLadders(_ board: [[Int]]) -> Int {
    var mapping = [Int: pair]()
    var i = 0, j = 0, start = board.count * board.count
    var x = board.count

    //
    while i	< board.count {
        
        if x%2 == 0{
            j = 0
            while j < board.count {
                mapping[start] = (i,j)
                start -= 1
                j += 1
            }
        } else {
            j = board.count - 1
            while j >= 0 {
                mapping[start] = (i,j)
                start -= 1
                j -= 1
            }
        }
        i += 1
        x -= 1
    }
    //print(mapping)
    return snakesAndLaddersHelper(board, 1, board.count * board.count, mapping)

}

// 1 0 1
// 0 1 0
// 1 0 1

// (0,0) (2,2)

func snakesAndLaddersHelper(_ board: [[Int]], _ source:Int , _ target:Int, _ mapping:[Int: pair]) -> Int {
    
    let max = board.count * board.count
    var distance = [Int:Int]()
    
    var visited = Array(repeating: false, count: max + 1)
    
    var queue = [Int]()
    queue.append(source)
    distance[source] = 0
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        if visited[current] {
            continue
        }
        
        visited[current] = true
    
        // add all neighbour
        for i in 1...6 {
            let neighorValue = current + i
            
            if neighorValue > max {
                break
            }
            
            if neighorValue == target {
                if let value = distance[target] {
                    return value
                }
                else {
                    return distance[current]! + 1
                }
                    
            }
            
            if visited[neighorValue] {
                continue
            }
            
            
            let xyIndexs = mapping[neighorValue]!
            var neighbor = board[xyIndexs.x][xyIndexs.y]
            if (neighbor == -1) {
                neighbor = neighorValue
            }
            
            queue.append(neighbor)
            if let value = distance[neighbor] {
                if value > distance[current]! + 1 {
                    distance[neighbor] = distance[current]! + 1
                }
            } else{
                distance[neighbor] = distance[current]! + 1
            }
            
        }
        

        
    }
    return -1
}


