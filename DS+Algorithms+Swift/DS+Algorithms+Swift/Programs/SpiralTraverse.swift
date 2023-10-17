//
//  SpiralTraverse.swift
//  AllTheAlgos
//
//  Created by kiranjith on 09/07/2022.
//

import Foundation

struct SpiralTraverse {
    func spiralTraverse(array: [[Int]]) -> [Int] {
        var output = [Int]()
        var startRow = 0
        var endRow = array.count-1
        var startColumn  = 0
        var endColumn = array[0].count-1
        
        while startRow <= endRow, startColumn <= endColumn {
           let topBorder = stride(from: startColumn, through: endColumn, by: 1)
            for col in topBorder {
                output.append(array[startRow][col])
            }
            
            let rightBorder = stride(from: startRow+1, through: endRow, by: 1)
            for row in rightBorder {
                output.append(array[row][endColumn])
            }
            
            let bottomBorder = stride(from: endColumn-1, through: startColumn, by: -1)
            if startRow == endRow {
                break
            }
            for col in bottomBorder {
                output.append(array[endRow][col])
            }
            
            let leftBorder = stride(from: endRow-1, through: startRow+1, by: -1)
            if startColumn == endColumn {
                break
            }
            for row in leftBorder {
                output.append(array[row][startColumn])
            }
            
            startRow += 1
            endRow -= 1
            startColumn += 1
            endColumn -= 1
            
        }
        return output
     }
    
  
}
