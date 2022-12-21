let num = Int(readLine()!)!
var answer = 1
if num != 0 {
    for i in 1...num {
        answer *= i
    }
}
print(answer)