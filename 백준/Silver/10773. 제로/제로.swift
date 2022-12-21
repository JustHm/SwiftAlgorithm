var limit = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<limit {
    let num = Int(readLine()!)!
    if num == 0 {
        arr.removeLast()
    } else {
        arr.append(num)
    }
}
print(arr.reduce(0, +))