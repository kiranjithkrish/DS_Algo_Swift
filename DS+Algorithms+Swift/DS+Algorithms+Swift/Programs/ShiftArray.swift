//
//  ShiftArray.swift
//  AllTheAlgos
//
//  Created by kiranjith on 26/06/2022.
//

import Foundation
struct ShiftArray {
    func leftShiftArray(array:inout [Int], by: Int) {
        let s = stride(from: 0, to: array.count, by: 1)
        for i in s {
            let temp = array[i]
            array[i] = array[i+1]
           
        }
    }
}
