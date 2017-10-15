func bubbleSort(_ array : [Int]) -> [Int] {
    var arr = array

    for _ in 0..<arr.count{
        for j in 0..<arr.count-1{
            if(arr[j] > arr[j+1]){
                arr.swapAt(j,j+1)
            }
        }
    }

    return arr
}

var temp = [9,8,7,6,5,4]
print(bubbleSort(temp))