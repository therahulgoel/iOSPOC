//
//  Course Schedule.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 22/01/23.
//  Copyright © 2023 Rahul Goel. All rights reserved.
//

import Foundation

// @therahulgoel
// https://leetcode.com/problems/course-schedule/

//Solution: Can be reduced to finding Cycle  in Directed graph.
func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
    var visited = Set<Int>()
    var inVisit = Set<Int>()
    let neighbours = neighboursAdjcList(numCourses, prerequisites)
    
    for course in 0..<numCourses{
        let hasCycle = hasCycle(course, neighbours, &visited, &inVisit)
        if hasCycle{
            return false
        }
    }
    return true
}

//Return if given Directed Graph has cycle or not
func hasCycle(_ vertex: Int, _ neighbours: [[Int]], _ visited: inout Set<Int>, _ inVisit: inout Set<Int>) -> Bool {
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
        let hasCycle = hasCycle(v, neighbours, &visited, &inVisit)
        if hasCycle{
            return true
        }
    }
    inVisit.removeAll()
    visited.insert(vertex)
    return false
}

//To generate neighbours or dependant courses for reach give course
func neighboursAdjcList(_ numCourses:Int, _ prerequisites: [[Int]])->[[Int]]{
    var neighbours = Array(repeating: [Int](), count: numCourses)
    for edge in prerequisites{
        neighbours[edge[0]].append(edge[1])
    }
    return neighbours
}



