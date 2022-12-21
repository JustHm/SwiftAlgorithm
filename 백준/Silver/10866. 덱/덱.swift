struct Deque{
    private var frontStack: [Int] = []
    private var backStack: [Int] = []
    public var count: Int {
        return frontStack.count + backStack.count
    }
    public var isEmpty: Bool {
        return frontStack.isEmpty && backStack.isEmpty
    }
    
    public mutating func pushFront(_ data: Int) {
        frontStack.append(data)
    }
    public mutating func pushBack(_ data: Int) {
        backStack.append(data)
    }
    public mutating func pop_front() -> Int {
        if frontStack.isEmpty, backStack.isEmpty {
            return -1
        }
        else if !frontStack.isEmpty, backStack.isEmpty {
            return frontStack.removeLast()
        }
        else if frontStack.isEmpty, !backStack.isEmpty{
            var temp: [Int] = backStack.reversed()
            let data = temp.removeLast()
            backStack = temp.reversed()
            return data
        }
        else {
            return frontStack.removeLast()
        }
    }
    public mutating func pop_back() -> Int  {
        if frontStack.isEmpty, backStack.isEmpty {
            return -1
        }
        else if frontStack.isEmpty, !backStack.isEmpty {
            return backStack.removeLast()
        }
        else if !frontStack.isEmpty, backStack.isEmpty{
            var temp: [Int] = frontStack.reversed()
            let data = temp.removeLast()
            frontStack = temp.reversed()
            return data
        }
        else {
            return backStack.removeLast()
        }
    }
    public func front() -> Int {
        if frontStack.isEmpty, backStack.isEmpty {
            return -1
        }
        else if !frontStack.isEmpty, backStack.isEmpty {
            return frontStack.last!
        }
        else if frontStack.isEmpty, !backStack.isEmpty{
            return backStack.first!
        }
        else {
            return frontStack.last!
        }
    }
    public func back() -> Int {
        if frontStack.isEmpty, backStack.isEmpty {
            return -1
        }
        else if frontStack.isEmpty, !backStack.isEmpty {
            return backStack.last!
        }
        else if !frontStack.isEmpty, backStack.isEmpty{
            return frontStack.first!
        }
        else {
            return backStack.last!
        }
    }
}

var deque: Deque = Deque()
var result: String = ""
for _ in 0..<Int(readLine()!)! {
    let command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "push_front":
        deque.pushFront(Int(command[1])!)
    case "push_back":
        deque.pushBack(Int(command[1])!)
    case "pop_front":
        result += "\(deque.pop_front())\n"
    case "pop_back":
        result += "\(deque.pop_back())\n"
    case "front":
        result += "\(deque.front())\n"
    case "back":
        result += "\(deque.back())\n"
    case "size":
        result += "\(deque.count)\n"
    case "empty":
        result += "\(deque.isEmpty ? "1" : "0")\n"
    default:
        break
    }
}
print(result)
