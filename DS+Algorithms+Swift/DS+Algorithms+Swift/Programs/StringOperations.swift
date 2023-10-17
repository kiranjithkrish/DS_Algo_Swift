//
//  StringOperations.swift
//  AllTheAlgos
//
//  Created by kiranjith on 03/07/2022.
//

import Foundation
struct StringUnicode {
    
    func unicodeScalars(string: String){
        for scalar in string.unicodeScalars {
            print(scalar)
        }
    }
    func unicodeScalarsValues(string: String){
        for scalar in string.unicodeScalars {
            print(scalar.value)
        }
    }
    
    func utf8Values(string: String) {
        for utf8 in string.utf8 {
            print(utf8)
        }
    }
    
    func utf16Values(string: String) {
        for utf16 in string.utf16 {
            print(utf16)
        }
    }
}
