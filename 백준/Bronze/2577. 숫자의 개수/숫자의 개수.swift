var multiple: Int = 1
var numbers = Array(repeating: 0, count: 10)
for _ in 1...3 {
    multiple *= Int(readLine()!)!
}
for char in String(multiple) {
    let index = Int(String(char))!
    numbers[index] += 1
}
for item in numbers {
    print(item)
}