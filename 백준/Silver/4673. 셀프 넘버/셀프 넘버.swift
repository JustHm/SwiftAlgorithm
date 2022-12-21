func selfNumber(_ n: Int) -> Int {
    var temp = 0
    for char in String(n) { // 자릿수 더하기
        temp += char.wholeNumberValue!
    }
    return n + temp
}
var numbers: [Bool] = Array(repeating: false, count: 100001)
for n in 1...10000 {
    let index = selfNumber(n)
    numbers[index] = true
}
for n in 1...10000 {
    if !numbers[n] {
        print(n)
    }
}