func solution(_ arr:[Int]) -> Int {
    var answer: Int = arr.first!
  
    for i in 1..<arr.count {
        answer = lcm(answer, arr[i])
    }
  
    return answer
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var x = a
    var y = b
    while y != 0 {
        let temp = x % y
        x = y
        y = temp
    }
    return x
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / gcd(a, b)
}