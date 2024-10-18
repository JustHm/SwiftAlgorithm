let _ = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var count = 0

func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    for i in 2..<n {
        if n % i == 0 { return false }
    }
    return true
}

for i in input {
    if isPrime(i) { count += 1 }
}
print(count)