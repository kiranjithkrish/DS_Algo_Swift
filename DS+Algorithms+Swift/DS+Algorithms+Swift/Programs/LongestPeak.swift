//
//  LongestPeak.swift
//  AllTheAlgos
//
//  Created by kiranjith on 20/07/2022.
//

import Foundation

struct LongestPeak {
    
    func longestPeak(array: [Int]) -> Int {
        var longestPeak = 0
        var iterator = 1
        while iterator < array.count-1 {
            if array[iterator-1] < array[iterator], array[iterator+1] < array[iterator] {
                var length = 0
                var left = iterator
                var right = iterator
                while left > 0, array[left-1] < array[left] {
                    length += 1
                    left = left - 1
                }
                while  right < array.count-1, array[right+1] < array[right] {
                    length += 1
                    right = right + 1
                }
                let current = 1 + length
                if current > longestPeak {
                    longestPeak = current
                }
                iterator = right
            } else {
                iterator += 1
            }
        }
        return longestPeak
    }
    
    func findLengthOfPeak(array: [Int], top: Int) -> Int {
        var length = 0
        var left = top
        var right = top
        while left > 0, array[left-1] < array[left] {
            length += 1
            left = left - 1
        }
        while  right < array.count-1, array[right+1] < array[right] {
            length += 1
            right = right + 1
        }
        return 1 + length
    }
}
