for _ in 1...3 {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    switch (input.filter {$0 == 0}.count) {
    case 0:
        print("E")
    case 1:
        print("A")
    case 2:
        print("B")
    case 3:
        print("C")
    case 4:
        print("D")
    default:
        break
    }
}