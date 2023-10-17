//
//  ThreeNumberSum.swift
//  AllTheAlgos
//
//  Created by kiranjith on 04/07/2022.
//

import Foundation

struct ThreeNumberSum {
    func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
        let  sorted = array.sorted()
        var triplet: [[Int]] = []
        let s = stride(from: 0, to: array.count-2, by: 1)
        for n in s {
            var left = n + 1
            var right = array.count-1
            while left < right {
                let currentSum = sorted[left] + sorted[right] + sorted[n]
                if currentSum == targetSum {
                    triplet.append([sorted[n], sorted[left], sorted[right]])
                    left += 1
                    right -= 1
                } else if currentSum < targetSum {
                    left += 1
                } else if currentSum > targetSum {
                    right -= 1
                }
                
            }
        }
        return triplet
    }
}
