while true {
    let input = readLine()!
    guard input != "0" else { break }
    let reverse = String(input.reversed())
    if input == reverse {
        print("yes")
    }
    else {
        print("no")
    }
}