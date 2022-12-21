var total = Int(readLine()!)!
let reps = Int(readLine()!)!
for _ in 0..<reps {
    let cost = readLine()!.split(separator: " ").map {Int($0)!}
    total -= cost[0] * cost[1]
}
print(total == 0 ? "Yes" : "No")
