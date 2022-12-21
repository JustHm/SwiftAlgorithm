var min: Int = -1
var sum: Int = 0
for _ in 1...7 {
    var input = Int(readLine()!)!
    
    if (input % 2 != 0) {
        sum += input
        if min == -1 || min > input {
            min = input
        }
    }
}
if sum != 0 {
    print(sum)
    print(min)
} else {
    print(min)
}