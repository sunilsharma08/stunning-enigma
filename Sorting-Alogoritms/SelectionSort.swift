
func selectionSort(_ array : [Int]) -> [Int]{
    var arr = array;

    for i in 0..<arr.count-1{
        // assume lowest index to be i
        var lowest = i
        // find the index of lowest element
        for j in i+1..<arr.count{
            if(arr[lowest] > arr[j]){
                lowest = j
            }
        }
        // if lowest element if found then swap
        // else do nothing i.e element at i the lowest elements
        if i != lowest{
            arr.swapAt(i,lowest)
        }
    }
    return arr;
}

let temp = [9,8,7,6,4,3]
print(selectionSort(temp))