let reps = Int(readLine()!)!

for row in 1...reps {
    for _ in 0..<row {
        print("*",terminator: "")
    }
    print()
}