import Foundation

/// Returns the position of an object inside an Array, based to a Range, using the Binary Search
///
/// - Parameters:
///   - array: A list of objects T
///   - object: The object T to search
///   - range: Range of search
/// - Returns: The position of the object in the list
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

/// Returns the position of an object inside an Array using the Binary Search
///
/// - Parameters:
///   - array: A list of objects T
///   - object: The object T to search
/// - Returns: The position of the object in the list
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
