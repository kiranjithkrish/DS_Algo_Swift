//
//  MonotonicArray.swift
//  AllTheAlgos
//
//  Created by kiranjith on 08/07/2022.
//

import Foundation

struct MonotonicArray {
    func isMonotonic(array: [Int]) -> Bool {
        var nonDecreasing = true
        var nonIncreasing = true
        let s = stride(from: 1, to: array.count, by: 1)
        for idx in s {
            if array[idx] - array[idx-1] < 0 {
                nonIncreasing = false
            } else if array[idx] - array[idx-1] > 0 {
                nonDecreasing = false
            }
        }
      
       
        return nonIncreasing || nonDecreasing
    }
}
