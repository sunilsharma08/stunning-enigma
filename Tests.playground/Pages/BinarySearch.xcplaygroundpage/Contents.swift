//: [Previous](@previous)

import Foundation

func binarySearch<T: Comparable>(_ array: [T], _ object: T, _ range: Range<Int>) -> Int? {
    if(range.lowerBound >= range.upperBound) {
        return nil
    }
    
    let mid = range.lowerBound + (range.upperBound - range.lowerBound) / 2
    
    if array[mid] > object {
        return binarySearch(array, object, range.lowerBound..<mid)
    } else if array[mid] < object {
        return binarySearch(array, object, mid+1..<range.upperBound)
    } else {
        return mid
    }
}

func binarySearch<T: Comparable>(_ array: [T], _ object: T) -> Int? {
    var lowerBound = 0
    var upperBound = array.count
    
    while lowerBound < upperBound {
        let mid = lowerBound + (upperBound - lowerBound) / 2
        if array[mid] == object {
            return mid
        } else if array[mid] < object {
            lowerBound = mid + 1
        } else {
            upperBound = mid
        }
    }
    
    return nil
}

let sortedArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let elementToFind = 9

if let index = binarySearch(sortedArray, elementToFind, 0..<sortedArray.count) {
    print("\(elementToFind) found at index \(index)")
} else {
    print("\(elementToFind) not found !!")
}

if let index = binarySearch(sortedArray, elementToFind) {
    print("\(elementToFind) found at index \(index)")
} else {
    print("\(elementToFind) not found !!")
}

//: [Next](@next)
