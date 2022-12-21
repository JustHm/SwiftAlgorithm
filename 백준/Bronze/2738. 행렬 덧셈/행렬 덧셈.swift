let relation = readLine()!.split(separator: " ").map{Int($0)!}
var arr: [[Int]] = []
for _ in 0..<relation[0] {
    let data = readLine()!.split(separator: " ").map{Int($0)!}
    arr.append(data)
}
for i in 0..<relation[0] {
    let data = readLine()!.split(separator: " ").map{Int($0)!}
    for j in 0..<relation[1] {
        arr[i][j] += data[j]
    }
}

for i in 0..<relation[0] {
    for j in 0..<relation[1] {
        print(arr[i][j], terminator: " ")
    }
    print()
}