var input = readLine()!.split(separator: " ").map({Int($0)!})
var number = Array(1...input[0])
var deleteNum = input[1] - 1
var index = deleteNum

print("<", terminator: "")
while !number.isEmpty {
    let del = number.remove(at: index)
    print(del, terminator: "")
    if number.count != 0 {
        index = (index + deleteNum) % number.count
        print(",", terminator: " ")
    }
}
print(">", terminator: "")