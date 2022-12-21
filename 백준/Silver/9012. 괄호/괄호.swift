var stack:[Int] = []
var answer = ""
for _ in 0..<Int(readLine()!)! {
    let str = readLine()!
    var result = "YES\n"
    for char in str {
        if char ==  "(" {
            stack.append(0)
        }
        else if char == ")" {
            if stack.isEmpty {
                result = "NO\n"
                break
            }
            stack.removeLast()
        }
    }
    if !stack.isEmpty {
        result = "NO\n"
    }
    stack.removeAll()
    answer += result
}
print(answer)