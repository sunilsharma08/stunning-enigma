//: [Previous](@previous)

import Foundation

func fibonacci(of num: Int) -> Int {
    if num <= 1 {
        return num
    } else {
        return fibonacci(of: num - 1) + fibonacci(of: num - 2)
    }
}

let num = 22
print("Fibonacci of \(num) : \(fibonacci(of : num))")

//: [Next](@next)
