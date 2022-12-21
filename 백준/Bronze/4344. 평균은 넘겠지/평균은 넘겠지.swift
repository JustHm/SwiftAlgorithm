import Foundation
let reps = Int(readLine()!)!
var result = 0
for _ in 0..<reps {
    var scores = readLine()!.split(separator: " ").map({Int($0)!})
    scores.removeFirst()
    let average = scores.reduce(0, +) / scores.count
    let result = String(format: "%.3f", (Double(scores.filter({$0 > average}).count)/Double(scores.count)) * 100.0 )
    print("\(result)%")
}