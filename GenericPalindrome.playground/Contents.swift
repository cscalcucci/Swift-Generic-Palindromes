//: Playground - noun: a place where people can play

import UIKit

func genericPalindrome<T: Equatable>(arr: [T]) -> Bool {
    func removeRange<T: Equatable>(arr: [T]) -> [T] {
        return [T](arr.dropFirst().dropLast())
    }
    
    if arr.first != arr.last {
        return false
    } else {
        if arr.count <= 1 { return true }
    }
    return genericPalindrome(removeRange(arr))
}

genericPalindrome([1,"a","b",1])