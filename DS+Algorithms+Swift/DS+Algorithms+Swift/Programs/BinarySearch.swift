//
//  BinarySearch.swift
//  AllTheAlgos
//
//  Created by kiranjith on 12/06/2022.
//

import Foundation


struct BinarySearch {
    
    func binarySearchTarget(input: [Int], target: Int) -> Int {
        let first = 0
        let last = input.count - 1
        let targetIndex =  binarySearchTargetHelper(input: input, first: first, last: last, target: target)
        return targetIndex
    }
    
    func binarySearchTargetHelper(input: [Int], first: Int, last: Int, target: Int) -> Int {
        guard first <= last else {
            return -1
        }
        let mid = (first + last)/2
        if input[mid] == target {
            return mid
        } else if input[mid] < target {
            return  binarySearchTargetHelper(input: input, first: mid, last: last, target: target)
        } else {
            return binarySearchTargetHelper(input: input, first: 0, last: mid, target: target)
        }
        
    }
}
