let count = Int(readLine()!)!
for i in (1...count).reversed() {
    var star = String(repeating: " ", count: count - i)
    star += String(repeating: "*", count: ((2 * i) - 1))
    print(star)
}
for i in (1...count) {
    if i == 1 { continue}
    var star = String(repeating: " ", count: count - i)
    star += String(repeating: "*", count: ((2 * i) - 1))
    print(star)
}