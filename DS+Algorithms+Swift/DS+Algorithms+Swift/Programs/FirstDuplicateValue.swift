//
//  FirstDuplicateValue.swift
//  AllTheAlgos
//
//  Created by kiranjith on 26/07/2022.
//

import Foundation


struct FirstDuplicateValue {
    
    func firstDuplicateValue(_ array: inout [Int]) -> Int {
        guard array.count > 0 else {
            return -1
        }
        for (idx,val) in array.enumerated() {
            let index = abs(val) - 1
            if array[index] < 0 {
                return val
            } else {
                array[index] = -1 * array[index]
            }
        }
        return -1
      }
}
