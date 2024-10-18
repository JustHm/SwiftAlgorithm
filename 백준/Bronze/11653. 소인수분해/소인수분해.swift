var input = Int(readLine()!)!

func findNumber(n: Int) -> Int {
    for i in 2...n {
        if n % i == 0 { return i }
    }
    return -1
}

while input > 1 {
    let number = findNumber(n: input)
    input = input / number
    print(number)
}