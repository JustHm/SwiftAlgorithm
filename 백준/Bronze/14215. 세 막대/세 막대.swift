let input = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
let sum = input[0]+input[1]
if sum > input[2] {
    print(sum + input[2])
}
else {
    print((sum * 2) - 1)
}