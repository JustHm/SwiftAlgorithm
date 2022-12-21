var input = Int(readLine()!)!
var answer = 0
var sum = 0

for item in (input/2..<input).reversed() {
    sum = item
    sum += (String(item).map{Int(String($0))!}.reduce(0,+))
    
    if sum == input {
        answer = item
    }
}

print(answer)
