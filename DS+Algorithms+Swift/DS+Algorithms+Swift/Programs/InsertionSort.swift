//
//  InsertionSort.swift
//  AllTheAlgos
//
//  Created by kiranjith on 20/06/2022.
//

import Foundation


struct InsertionSort {
    
    func insertionSort(array:inout [Int]) -> [Int] {
        let outer = stride(from: 1, to: array.count, by: 1)
        for i in outer {
            var j = i
            while j>0, array[j-1]>array[j]  {
                array.swapAt(j-1, j)
                
                j -= 1
            }
            
        }
        return array
    }
}

        
