var limit = Int(readLine()!)!

var arr = [Int]()
var number = 1
var output = ""
for _ in 0..<limit {
    let num = Int(readLine()!)!
    while number <= num {
        arr.append(number)
        number += 1
        output += "+\n"
    }
    
    if arr.last! == num {
        arr.removeLast()
        output += "-\n"
    } else {
        output = "NO"
        break
    }
}
print(output)