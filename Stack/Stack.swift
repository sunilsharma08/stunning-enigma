struct Stack<T> {
    fileprivate var array : [T] = []

    public var isEmpty : Bool {
        return array.isEmpty
    }

    mutating func push(_ value : T){
        array.append(value)
    }

    mutating func pop() -> T? {
        if isEmpty{
            return nil
        }else{
            return array.popLast()
        }
    }

    func peek() -> T? {
        return array.last
    }

    var count : Int {
        return array.count
    }
    
}

extension Stack : CustomStringConvertible {
    var description : String {
        let topDivinder = "---Stack---\n"
        let bottomDivider = "\n-----------\n"
        let stackElements = array.map { "\($0)" }.reversed().joined(separator: "\n")
        return topDivinder + stackElements + bottomDivider
    }
}

var integerStack = Stack<Int>()

integerStack.push(1)
integerStack.push(2)
integerStack.push(3)
integerStack.push(4)

print(integerStack)