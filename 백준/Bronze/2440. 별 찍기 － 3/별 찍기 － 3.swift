let count = Int(readLine()!)!
for i in 0..<count {
    for j in i..<count {
        print("*", terminator: "")
    }
    print()
}