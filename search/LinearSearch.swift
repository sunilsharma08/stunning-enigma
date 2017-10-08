import Foundation

// Linear Search

func linearSearch<T : Equatable>(_ array : [T],_ object : T) -> Int? {
    for index in 0..<array.count {
        if array[index] == object {
            return index
        }
    }
    return nil
}

let testData : [Int] = [1,2,3,4,5,6,7,8,9]
let elementToFind = 90
if let index = linearSearch(testData,elementToFind) {
    print("\(elementToFind) is found at index \(index)")
}else {
    print("\(elementToFind) is not found !!")
}