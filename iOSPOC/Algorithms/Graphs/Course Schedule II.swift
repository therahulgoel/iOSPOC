//
//  Course Schedule II.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 22/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

// @therahulgoel
// https://leetcode.com/problems/course-schedule-ii/

//Solution: Can be reduced to finding Cycle detection in Directed graph with Topological Sort
func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int]  {
    var visited = Set<Int>()
    var inVisit = Set<Int>()
    var order = [Int]()
    let neighbours = neighboursAdjcList_(numCourses, prerequisites)
    
    for course in 0..<numCourses{
        let hasCycle = hasCycle_(course, neighbours, &visited, &inVisit, &order)
        if hasCycle{
            return []
        }
    }
    return order
}

//Return if given Directed Graph has cycle or not
func hasCycle_(_ vertex: Int, _ neighbours: [[Int]], _ visited: inout Set<Int>, _ inVisit: inout Set<Int>, _ order:inout [Int]) -> Bool {
    if visited.contains(vertex){
        return false
    }
    if inVisit.contains(vertex){
        return true
    }
    inVisit.insert(vertex)
    let currentVertexNeighbours = neighbours[vertex]
    //Check if there is dependency in neighbours of current course of vertex
    for v in currentVertexNeighbours{
        let hasCycle = hasCycle_(v, neighbours, &visited, &inVisit, &order)
        if hasCycle{
            return true
        }
    }
    inVisit.removeAll()
    visited.insert(vertex)
    order.append(vertex)
    return false
}

//To generate neighbours or dependant courses for reach give course
func neighboursAdjcList_(_ numCourses:Int, _ prerequisites: [[Int]])->[[Int]]{
    var neighbours = Array(repeating: [Int](), count: numCourses)
    for edge in prerequisites{
        neighbours[edge[0]].append(edge[1])
    }
    return neighbours
}

