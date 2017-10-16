import Foundation

class Node<T> {
    var value: T
    var next: Node?
    weak var prev: Node?

    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?

    init() {}

    init(head: Node<T>) {
        self.head = head
    }

    func isEmpty() -> Bool {
        return head == nil
    }

    var first: Node<T>? {
        return head
    }

    var last: Node<T>? {
        return tail
    }
    
    /// Add a new element to the list
    ///
    /// - Parameter value: The new element to add
    func append(_ value: T) {
        // create new node
        let newNode = Node(value : value)
        // check if tail node is present
        if let tailNode = tail {
            // assign newNode prev node to current tail
            // make newNode tail's next node
            newNode.prev = tailNode
            tailNode.next = newNode
        } else {
            // This means the list in empty
            // make newNode as head of the linked list
            head = newNode
        }
        // update the tail pointer
        tail = newNode
    }
    
    /// Removes all the elements from the list
    func removeAll() {
        head = nil
        tail = nil
    }

    /// Returns the `Node` at a specific position of the list.
    ///
    /// - Parameter index: The index Int
    /// - Returns: The `Node`
    func nodeAt(index: Int) -> Node<T>? {
        if(index >= 0 && index < count) {
            var node = head
            var i = index
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node?.next
            }
        }
        return nil
    }

    /// Returns the amount of node in the list
    var count: Int {
        var count = 0
        var node = head
        while node != nil {
            count += 1
            node = node?.next
        }
        return count
    }
}

extension LinkedList : CustomStringConvertible {
    public var description: String {
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
