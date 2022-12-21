let reps = Int(readLine()!)!

for i in 1...reps {
    let sum = readLine()!.split(separator: " ").map {Int($0)!}.reduce(0, +)
    print("Case #\(i): \(sum)")
}