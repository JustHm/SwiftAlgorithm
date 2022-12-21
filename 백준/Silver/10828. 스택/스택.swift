var arr = [Int]()
for _ in 0..<Int(readLine()!)! {
    let command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "push":
        arr.append(Int(command[1])!)
    case "pop":
        print(arr.isEmpty ? "-1" : arr.removeLast())
    case "top":
        print(arr.isEmpty ? "-1" : arr.last!)
    case "size":
        print(arr.count)
    case "empty":
        print(arr.isEmpty ? "1" : "0")
    default:
        break
    }
}