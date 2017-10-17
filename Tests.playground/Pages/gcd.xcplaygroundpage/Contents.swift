//: [Previous](@previous)

import Foundation

func gcd(of a: Int, and b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(of: b, and: a%b)
    }
}

let a = 366
let b = 60
print("GDC of a = \(a) and b = \(b) is \(gcd(of : a, and : b))")

//: [Next](@next)
