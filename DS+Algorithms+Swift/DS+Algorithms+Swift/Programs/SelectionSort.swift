//
//  SelectionSort.swift
//  AllTheAlgos
//
//  Created by kiranjith on 23/06/2022.
//

import Foundation

struct SelectionSort {
    func selectionSort(array:inout [Int]) -> [Int] {
        guard  array.count > 0 else {
            return array
        }
        var smallest = 0
        var swapped = false
        let outer = stride(from: 0, to: array.count, by: 1)
        for n in outer {
            smallest = n
            let inner = stride(from: n+1, to: array.count, by: 1)
            for m in inner {
                if array[smallest]>array[m] {
                    swapped = true
                    smallest = m
                }
            }
            if swapped { array.swapAt(n, smallest) }
        }
        return array
    }
}
