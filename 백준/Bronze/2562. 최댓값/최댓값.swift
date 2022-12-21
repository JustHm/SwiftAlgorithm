var maxInfo: (Int, Int) = (0,0)
for index in 1...9 {
    let num = Int(readLine()!)!
    if num > maxInfo.1 {
        maxInfo = (index, num)
    }
}
print("\(maxInfo.1)\n\(maxInfo.0)")