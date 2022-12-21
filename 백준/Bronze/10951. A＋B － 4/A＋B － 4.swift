while let string = readLine() {
    let sum = string.split(separator: " ").map({Int(String($0))!})
    print(sum[0] + sum[1])
}