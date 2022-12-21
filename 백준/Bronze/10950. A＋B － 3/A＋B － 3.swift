let rep = Int(readLine()!)!

for _ in 0..<rep {
    var temp = readLine()!.split(separator: " ").map({Int($0)!})
    print(temp.reduce(0, +))
}