import Foundation

public class Node {
    var value : String
    var next : Node?
    weak var prev : Node?
    init(value : String){
        self.value = value
    }
}

class LinkedList{
    var head : Node?
    var tail : Node?

    init(){
    }

    init(head : Node){
        self.head = head
    }

    func isEmpty() -> Bool {
        return head == nil
    }

    func first() -> Node? {
        return head
    }

    func last() -> Node? {
        return tail
    }

    func append(value : String) {
        // create new node
        let newNode = Node(value : value)
        // check if tail node is present
        if let tailNode = tail {
            // assign newNode prev node to current tail
            // make newNode tail's next node
            newNode.prev = tailNode
            tailNode.next = newNode
        }else{
            // This means the list in empty
            // make newNode as head of the linked list
            head = newNode
        }
        // update the tail pointer
        tail = newNode
    }

    func removeAll(){
        head = nil
        tail = nil
    }

    func nodeAt(index : Int) -> Node? {
        if(index >= 0 && index < length()){
            var node = head
            var i = index
            while node != nil {
                if i == 0 { return node}
                i -= 1
                node = node!.next
            }
        }
        return nil
    }

    func length() -> Int{
        var count : Int = 0
        var node : Node? = head
        while  node != nil {
            count += 1
            node = node!.next
        }
        return count
    }
}
extension LinkedList : CustomStringConvertible {
    public var description : String {
        var text = "["
        var node = head
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", "}
        }
        return text + "]"
    }
}

let list = LinkedList()
list.append(value : "Dog")
list.append(value : "Cat")
list.append(value : "Horse")
list.append(value : "Lion")
// list.removeAll()
print(list)

if let node = list.nodeAt(index : 6) {
    print("\(node.value)")
}else{
    print("Index out of bounds")
}

print(list.length())