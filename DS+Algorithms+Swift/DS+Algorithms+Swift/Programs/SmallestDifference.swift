//
//  SmallestDifference.swift
//  AllTheAlgos
//
//  Created by kiranjith on 05/07/2022.
//

import Foundation

struct SmallestDifference {
    func smallestDifferenceFlawedLogic(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
        var output = [Int]()
        let sortedOne = arrayOne.sorted()
        let sortedTwo = arrayTwo.sorted()
        if arrayTwo.first! > arrayOne.first! {
           let one = absoluteDifferenceToZero(array: sortedOne, number: sortedTwo[0])
            output.append(one)
            output.append(arrayTwo[0])
        } else {
          let one =  absoluteDifferenceToZero(array: sortedTwo, number: sortedTwo[0])
            output.append(one)
            output.append(arrayTwo[0])
        }
       
       return output
     }
    
    private func absoluteDifferenceToZero(array: [Int], number: Int) -> Int {
        var distance = LONG_MAX
        var min = array[0]
        for n in array {
            let absValue = abs(number-n)
            if absValue < distance {
                distance = absValue
                min = n
            }
        }
        return min
    }
    
    func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
        var output = [Int]()
        let sortedOne = arrayOne.sorted()
        let sortedTwo = arrayTwo.sorted()
        var min = Int.max
        var i = 0
        var minI = 0
        var minJ = 0
        var j = 0
        while i < sortedOne.count && j < sortedTwo.count {
            let absValue = abs(sortedOne[i] - sortedTwo[j])
            if absValue < min {
                min = absValue
                minI = i
                minJ = j
            }
            if sortedOne[i] <= sortedTwo[j] {
                i += 1
            } else {
                j += 1
            }
        }
        output.append(sortedOne[minI])
        output.append(sortedTwo[minJ])
        return output
    }
    

}
