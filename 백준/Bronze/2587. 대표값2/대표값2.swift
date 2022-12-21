var arr = [Int]()

for _ in 1...5 {
    let input = Int(readLine()!)!
    arr.append(input)
}
print(arr.reduce(0, +) / 5)
print(arr.sorted(by: <)[2])