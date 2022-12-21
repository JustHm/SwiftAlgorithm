var logCount = Int(readLine()!)!
for _ in 0..<logCount {
    var keyLog = readLine()!
    var leftField: [Character] = []
    var rightField: [Character] = []
    for char in keyLog {
        
        switch char {
        case "<":
            if !leftField.isEmpty {
                rightField.append(leftField.removeLast())
            }
        case ">":
            if !rightField.isEmpty {
                leftField.append(rightField.removeLast())
            }
        case "-":
            if !leftField.isEmpty{
                leftField.removeLast()
            }
        default:
            leftField.append(char)
        }
    }
    print(String(leftField+rightField.reversed()))
}