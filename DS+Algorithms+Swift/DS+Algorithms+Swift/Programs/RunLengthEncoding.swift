//
//  RunLengthEncoding.swift
//  AllTheAlgos
//
//  Created by kiranjith on 27/06/2022.
//

import Foundation

struct RunLengthEncoding {
    func runLengthEncoding(string: String) -> String {
        var encodedString = [Character]()
        var currentLength = 1
        let s = stride(from: 1, to: string.count, by: 1)
        for idx in s {
            let previous = string[string.index(string.startIndex, offsetBy: idx-1)]
            let current = string[string.index(string.startIndex, offsetBy: idx)]
            if current != previous || currentLength == 9 {
                encodedString.append(Character("\(currentLength)"))
                encodedString.append(previous)
                currentLength = 0
            }
            currentLength += 1
        }
        encodedString.append(Character("\(currentLength)"))
        encodedString.append(string[string.index(string.startIndex, offsetBy: string.count-1)])
        return String(encodedString)
        
    }
    
}
