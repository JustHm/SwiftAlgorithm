var info: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
var card: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
var answer: Int = 0

for first in 0..<card.count {
    for second in first+1..<card.count {
        for third in second+1..<card.count {
            let result = card[first] + card[second] + card[third]
            if result == info[1] {
                answer = result
                break
            }
            else if result < info[1] {
                answer = result > answer ? result : answer
            }
        }
    }
}
print(answer)