let reps = Int(readLine()!)!
var result = 0
func factorial(_ n:Int) -> Int {
    var ret = 0
    for i in 1...n {
        ret += i
    }
    return ret
}
for _ in 0..<reps {
    let scores = readLine()!.split(separator: "X")
    for score in scores {
        result += factorial(score.count)
    }
    print(result)
    result = 0
}