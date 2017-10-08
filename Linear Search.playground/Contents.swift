//: Playground - noun: a place where people can play

// Linear Search

func linearSearch<T : Equatable>(_ array : [T], _ object : T) -> Array<T>.Index? {
    return array.index { $0 == object }
}

func linearSearchConventional<T : Equatable>(_ array : [T], _ object : T) -> Int? {
    for index in 0..<array.count{
        if(array[index] == object){
            return index
        }
    }
    return nil
}
let data = [1,2,3,4,5,6,7,8,9]
let elementToSearch = 10

if let index = linearSearch(data, elementToSearch) {
    print("\(elementToSearch) is found at index \(index)")
}else{
    print("Element \(elementToSearch) is not present in the array.")
}

if let index = linearSearchConventional(data, 9) {
    print("\(elementToSearch) is found at index \(index)")
}else{
    print("Element \(elementToSearch) is not present in the array.")
}
