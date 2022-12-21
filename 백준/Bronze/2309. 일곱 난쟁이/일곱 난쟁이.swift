var arr = [Int]()
for _ in 1...9 {
    let input = Int(readLine()!)!
    arr.append(input)
}
arr.sort()
var total = arr.reduce(0, +)
for (index, value) in arr.enumerated() {
    for item in index+1..<arr.count {
        if total - (value + arr[item]) == 100 {
            arr.remove(at: index)
            arr.remove(at: item-1)
            break
        }
    }
    if arr.count == 7 {
        break
    }
}
for item in arr {
    print(item)
}