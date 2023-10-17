//
//  FirstNonRepeatingCharacter.swift
//  AllTheAlgos
//
//  Created by kiranjith on 03/07/2022.
//

import Foundation


struct FirstNonRepeating {
    func firstNonRepeatingCharacter(string: String) -> Int {
        var countDict = [Character:Int]()
        for character in string {
            if let _ = countDict[character] {
                countDict[character]! += 1
            } else {
               countDict[character] = 1
            }
        }
        for (key,val) in string.enumerated() {
            if countDict[val] == 1 {
                return key
            }
        }
        return -1
    }
}
