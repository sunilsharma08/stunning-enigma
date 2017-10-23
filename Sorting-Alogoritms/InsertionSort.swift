//
//  MergeSort.swift
//

import UIKit

func insertionSort<T:Comparable>(_ array:[T]) -> [T] {
    
    //check for trivial case
    guard array.count > 1 else {
        return array
    }
    
    var output:[T] = array
    
    for primaryindex in 0..<output.count {
        
        let key = output[primaryindex]
        var secondaryindex = primaryindex
        
        while secondaryindex > -1 {
            
            if key < output[secondaryindex] {
                //move to correct position
                output.remove(at: secondaryindex + 1)
                output.insert(key, at: secondaryindex)
            }
            secondaryindex -= 1
        }
    }
    return output
}
