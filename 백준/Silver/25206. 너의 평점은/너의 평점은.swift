import Foundation
let table = [
    "A+": 4.5,
    "A0": 4.0,
    "B+": 3.5,
    "B0": 3.0,
    "C+": 2.5,
    "C0": 2.0,
    "D+": 1.5,
    "D0": 1.0,
    "F": 0.0
]
var result: Double = 0
var gradeResult: Double = 0
for _ in 1...20 {
    let grade = readLine()!.split(separator: " ").map({String($0)})
    if let score = table[grade[2]] {
        result += Double(grade[1])! * score
        gradeResult += Double(grade[1])!
    }
}
let powNum: Double = pow(10, 6)
let answer = round((result / gradeResult) * powNum) / powNum
print(answer)