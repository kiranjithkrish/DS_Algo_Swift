//
//  GenerateDocument.swift
//  AllTheAlgos
//
//  Created by kiranjith on 03/07/2022.
//

import Foundation

struct GenerateDocument {
    
    func generateDocumentFromCharacters(charaters: String, document: String) -> Bool {
        var countDict = [Character:Int]()
        for character in charaters {
            if let _ = countDict[character] {
                countDict[character]! += 1
            } else {
               countDict[character] = 1
            }
        }
        
        for character in document {
            if let val = countDict[character], val>0 {
                countDict[character]! -= 1
            } else {
                return false
            }
        }
        return true
    }
}
