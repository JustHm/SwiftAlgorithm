let count = Int(readLine()!)!
for i in 1...count {
    var star = String(repeating: " ", count: count - i)
    star += String(repeating: "*", count: ((2 * i) - 1))
    print(star)
}