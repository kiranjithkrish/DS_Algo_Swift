//
//  BubbleSort.swift
//  AllTheAlgos
//
//  Created by kiranjith on 19/06/2022.
//

import Foundation

struct BubbleSort {
    func bubbleSort(array: inout [Int]) -> [Int] {
        var length = array.count-1
        var sorted = false
        while !sorted {
            sorted = true
            for x in 1...length {
                let first = array[x-1]
                let second = array[x]
                if second < first {
                  array[x] = first
                  array[x-1] = second
                    sorted = false
                }
            }
            length -= 1
        }
        return array
    }
}
