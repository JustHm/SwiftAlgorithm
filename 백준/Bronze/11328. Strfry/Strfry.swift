var count = Int(readLine()!)!

while count != 0 {
    let str = readLine()!.split(separator: " ")
    if str[0].count < 2 {
        print("Possible")
    }
    else if str[0].sorted(by: <) == str[1].sorted(by: <) {
        print("Possible")
    }
    else {
        print("Impossible")
    }
    count -= 1
}