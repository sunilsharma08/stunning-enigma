struct Queue<T>{
    fileprivate var array : [T] = []

    public var front : T? {
        return array.first
    }

    public var isEmpty : Bool {
        return array.isEmpty
    }

    mutating func enqueue(_ value : T){
        array.append(value)
    }

    mutating func dequque() -> T? {
        if isEmpty {
            return nil
        }else{
            return array.removeFirst()
        }
    }
    
}

extension Queue : CustomStringConvertible {
    var description : String {
        let topDivider = "---Queue---\n"
        let queueElements = array.map {"\($0)"}.joined(separator : "\n")
        let bottomDivider = "\n-----------\n"

        return topDivider + queueElements + bottomDivider
    }
}

var q = Queue<Int>()

q.enqueue(3)
q.enqueue(2)
q.enqueue(1)
var a = q.dequque()
a = q.dequque()
print(q)