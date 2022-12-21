let reps = Int(readLine()!)!
for _ in 0..<reps{
    var str = readLine()!.split(separator: " ")
    var loop = Int(str.removeFirst())!
    
    for char in str[0] {
        print(String(repeating: "\(char)", count: loop), terminator: "")
    }
    print()
}