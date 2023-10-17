//
//  ThreeLargestNumbers.swift
//  AllTheAlgos
//
//  Created by kiranjith on 18/06/2022.
//

import Foundation

struct ThreeLargestNumbers {
    func threeLargestNumbers(array: [Int]) -> [Int] {
        var output:[Int?] = [nil,nil,nil]
        for (_,val) in array.enumerated() {
            insertLargest(array: &output, number: val)
        }
        return output.compactMap{$0}
    }
    
    
    func insertLargest(array: inout [Int?], number: Int) {
        if array[2] == nil {
            shiftAndUpdate(array: &array, position: 2, number: number)
            
        } else if array[1] == nil {
            shiftAndUpdate(array: &array, position: 1, number: number)
            
        } else if array[0] == nil {
            shiftAndUpdate(array: &array, position: 0, number: number)
        }
        if let value = array[2], number > value || array[2] == nil {
            shiftAndUpdate(array: &array, position: 2, number: number)
            
        } else if let value = array[1], number > value || array[1] == nil {
            shiftAndUpdate(array: &array, position: 1, number: number)
            
        } else if let value = array[0], number > value || array[0] == nil {
            shiftAndUpdate(array: &array, position: 0, number: number)
        }
    }
    
    func shiftAndUpdate(array: inout [Int?], position: Int, number: Int) {
        for x in 0...position {
            if x == position {
                array[x] = number
            } else if let _ = array[x] {
                array[x] = array[x+1]
            }
        }
    }
    
    
}
