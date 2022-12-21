let count = Int(readLine()!)!
for i in (1...count).reversed() {
    print(String(repeating: " ", count: count - i), terminator: "")
    print(String(repeating: "*", count: ((2 * i) - 1)))
}
