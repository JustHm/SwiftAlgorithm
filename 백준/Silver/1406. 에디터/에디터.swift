var str = Array(readLine()!)
var commandCount = Int(readLine()!)!
var stack: [Character] = []
for _ in 0..<commandCount {
    var command = readLine()!
    switch command {
    case "L":
        if !str.isEmpty {
            stack.append(str.removeLast())
        }
    case "D":
        if !stack.isEmpty {
            str.append(stack.removeLast())
        }
    case "B":
        if !str.isEmpty{
            str.removeLast()
        }
    default:
        str.append(command.last!)
    }
}
print(String(str+stack.reversed()))