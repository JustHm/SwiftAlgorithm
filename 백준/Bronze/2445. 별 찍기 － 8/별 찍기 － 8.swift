let count = Int(readLine()!)!
for i in 1...count {
    var star = String(repeating: "*", count: i)
    star += String(repeating: " ", count: ((count*2) - (i * 2)))
    star += String(repeating: "*", count: i)
    print(star)
}
for i in (1..<count).reversed() {
    var star = String(repeating: "*", count: i)
    star += String(repeating: " ", count: ((count*2) - (i * 2)))
    star += String(repeating: "*", count: i)
    print(star)
}