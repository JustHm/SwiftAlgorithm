let count = Int(readLine()!)!
let subjects = readLine()!.split(separator: " ").map({Double($0)!})
let maxScore: Double = subjects.max()!
var result: Double = 0.0
for subject in subjects {
    result += (subject/maxScore)*100.0
}
print(result/Double(count))