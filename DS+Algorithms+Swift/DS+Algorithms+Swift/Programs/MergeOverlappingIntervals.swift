//
//  MergeOverlappingIntervals.swift
//  AllTheAlgos
//
//  Created by kiranjith on 06/08/2022.
//

import Foundation

struct MergeOverlappingIntervals {
    func mergeOverlappingIntervals(_ intervals: [[Int]]) -> [[Int]] {
        var output = [[Int]]()
        var sorted = intervals.sorted { $0[0]<$1[0] }
        var counter = 1
        output.append(sorted[0])
        while counter < sorted.count-1 {
            if  sorted[counter][0] < output[output.count-1][1] {
                output.append([sorted[counter][0], sorted[counter+1][1]])
                
            } else {
                output.append(sorted[counter])
                
            }
            counter = counter + 1
        }
        return output
    }
}
