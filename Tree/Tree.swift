public class TreeNode<T> {

    public var value : T

    public weak var parent : TreeNode?
    public var children : [TreeNode<T>] = []

    init(_ value : T){
        self.value = value
    }

    public func addChild(_ node : TreeNode<T>){
        children.append(node)
        node.parent = self
    }

    public func addChildren(_ children : [TreeNode<T>]){
        self.children = children
        for child in children{
            child.parent = self
        }
    }

}

extension TreeNode : CustomStringConvertible {

    public var description : String {

        var s = "\(value)"
        if !children.isEmpty{
            s += " { " + children.map { $0.description }.joined(separator : ", ") + "}"
        }
        return s

    }
}

extension TreeNode where T : Equatable {

    public func search(_ value : T) -> TreeNode? {
        // If value of current node have the value to be find
        if value ==  self.value {
            // return current node
            return self
        }
        // loop through child from children array
        for child in children{
            // search for value in each child node
            // if found then return it
            if let found = child.search(value){
                return found
            }
        }
        // if nothing is found return nil
        return nil
    }
}

var head = TreeNode<String>("CAR")
var bmw = TreeNode<String>("BMW")
var audi = TreeNode<String>("AUDI")
var benz = TreeNode<String>("Mercedes Benz")
var arr : [TreeNode<String>] = []
arr.append(bmw)
arr.append(audi)
arr.append(benz)

var rr = TreeNode<String>("Rolls Royac")
var mc = TreeNode<String>("Mini Cooper")
bmw.addChild(rr)
bmw.addChild(mc)

var mb = TreeNode<String>("May Bach")
var mac = TreeNode<String>("McLaren")

benz.addChild(mb)
benz.addChild(mac)

head.addChildren(arr)

print(head)

print(head.search("Mini Cooper")!.parent!.value)