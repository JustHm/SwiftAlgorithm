while true {
    let input = Int(readLine()!)!
    if input == -1 { break }
    
    var sum = 0
    var arr = [String]()
    for i in 1..<input {
        if input % i == 0 {
            arr.append(String(i))
            sum += i
        }
    }
    
    if sum == input {
        print("\(input) = \(arr.joined(separator: " + "))")
    }
    else {
        print("\(input) is NOT perfect. ")
    }
}