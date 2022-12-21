var input: [Int] = readLine()!.split(separator: " ").map({Int($0)!})
var def = [1, 1, 2, 2, 2, 8]
for index in 0..<def.count {
    print(def[index] - input[index], terminator: " ")
}