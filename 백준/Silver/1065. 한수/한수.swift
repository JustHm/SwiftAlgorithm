var input = Int(readLine()!)!
var answer = 99

if input < 111 { print(input >= 100 ? answer : input) }
else {
    for i in 111...input {
        let temp = String(i).map{Int(String($0))!}
        var gap = [Int]()
        for j in 0..<temp.count-1 {
            gap.append(temp[j] - temp[j+1])
        }
        if Set(gap).count == 1 { answer += 1}
    }
    print(answer)
}