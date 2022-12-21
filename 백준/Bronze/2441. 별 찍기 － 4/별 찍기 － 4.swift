let count = Int(readLine()!)!

for i in 0..<count {
    for j in 0..<count {
        if j < i {
            print(" ", terminator: "")
        } else {
            print("*", terminator: "")
        }
    }
    print()
}