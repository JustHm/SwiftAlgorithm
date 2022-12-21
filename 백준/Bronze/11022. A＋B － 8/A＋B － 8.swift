let reps = Int(readLine()!)!

for i in 1...reps {
    let num = readLine()!.split(separator: " ").map {Int($0)!}
    print("Case #\(i): \(num[0]) + \(num[1]) = \(num[0]+num[1])")
}