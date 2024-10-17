var whiteSpace = Array(repeating: Array(repeating: 0, count: 100), count: 100)

for _ in 1...Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map({Int(String($0))!})
    for i in input[0]..<input[0]+10 {
        for j in input[1]..<input[1]+10 {
            whiteSpace[i][j] = 1
        }
    }
}
print(whiteSpace.flatMap({$0}).reduce(0, +))