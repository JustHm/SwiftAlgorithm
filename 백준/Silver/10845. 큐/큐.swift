var arr = [Int]()
var front: Int = 0
for _ in 0..<Int(readLine()!)! {
    let command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "push":
        arr.append(Int(command[1])!)
    case "pop":
        if arr.isEmpty || front == arr.count {
            print("-1")
        } else {
            print(arr[front])
            front += 1
        }
    case "front":
        if arr.isEmpty || front == arr.count {
            print("-1")
        } else {
            print(arr[front])
        }
    case "size":
        print(arr.count - front)
    case "back":
        if arr.isEmpty || front == arr.count {
            print("-1")
        } else {
            print(arr.last!)
        }
    case "empty":
        if arr.isEmpty || front == arr.count {
            print("1")
        } else {
            print("0")
        }
    default:
        break
    }
}