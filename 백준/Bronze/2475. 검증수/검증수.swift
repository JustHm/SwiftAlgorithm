func result(_ numbers: [Int]) {
    let sum = numbers.map{$0*$0}.reduce(0, +)
    print(sum % 10)
}
let data = readLine()!.split(separator: " ").map{Int($0)!}
result(data)