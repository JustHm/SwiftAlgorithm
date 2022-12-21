let count = Int(readLine()!)!
// 2n-1 (if 5 == 9
//var star = String(repeating: "*", count: 2*count -1)
for i in (1...count) {
    print(String(repeating: " ", count: count - i), terminator: "")
    print(String(repeating: "*", count: ((2 * i) - 1)))
}
for i in (1..<count).reversed() {
    print(String(repeating: " ", count: count - i), terminator: "")
    print(String(repeating: "*", count: ((2 * i) - 1)))
}