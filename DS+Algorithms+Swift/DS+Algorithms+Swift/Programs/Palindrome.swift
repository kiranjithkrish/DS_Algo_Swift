//
//  Palindrome.swift
//  AllTheAlgos
//
//  Created by kiranjith on 25/06/2022.
//

import Foundation
struct Palindrome {
    func isPlalindrome(string: String) -> Bool {
        var left = 0
        var right = string.count - 1
        var leftIndex = string.index(string.startIndex, offsetBy: left)
        var rightIndex = string.index(string.startIndex, offsetBy: right)
        while leftIndex < rightIndex {
            guard string[leftIndex] == string[rightIndex] else {
                return false
            }
            left += 1
            right -= 1
            leftIndex = string.index(string.startIndex, offsetBy: left)
            rightIndex = string.index(string.startIndex, offsetBy: right)
        }
        return true
    }
}
