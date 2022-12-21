var setArr: Set<Int> = []
for _ in 1...10 {
    let num = Int(readLine()!)! % 42
    setArr.insert(num)
}
print(setArr.count)