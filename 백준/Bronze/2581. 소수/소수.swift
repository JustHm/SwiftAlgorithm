let m = Int(readLine()!)!
let n = Int(readLine()!)!
var arr = [Int]()

func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    for i in 2..<n {
        if n % i == 0 { return false }
    }
    return true
}

for i in m...n {
    if isPrime(i) { arr.append(i) }
}
print(arr.isEmpty ? "-1" : "\(arr.reduce(0, +))\n\(arr[0])")