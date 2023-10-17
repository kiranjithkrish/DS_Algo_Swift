//
//  CeaserCipher.swift
//  AllTheAlgos
//
//  Created by kiranjith on 26/06/2022.
//

import Foundation
struct CeaserCipher {
    func ceaserCipher(string: String, key: UInt32) -> String {
        var output = ""
        let s = stride(from: 0, to: string.count, by: 1)
        let optimalKey = key % 26
        for i in s {
            let curretIndex = string.index(string.startIndex, offsetBy: i)
            output.append(contentsOf: String(getShiftedCharacter(character: string[curretIndex], shiftBy: optimalKey)))
        }
        return output
    }
    
    private func getShiftedCharacter(character: Character, shiftBy: UInt32) -> Character {
        let unicode =  character.unicodeScalars.first!.value + shiftBy
        if unicode < 123 {
            let scalar = UnicodeScalar(unicode)!
            return Character(scalar)
        } else {
            let scalar = UnicodeScalar(96 + unicode % 122)!
            return Character(UnicodeScalar(scalar))
        }
    }
}
