let num = Int(readLine()!)!
var result = num
var count = 0
while true {
    // 각 자릿수 더하고 이어 붙이기
    let sum = result >= 10 ? ((result % 10) + (result / 10)) : result
    let second = (result % 10) * 10 + (sum % 10)
    result = second
    count += 1
    if result == num {
        print(count)
        break
    }
}