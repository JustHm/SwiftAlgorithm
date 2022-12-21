let str = Array(readLine()!)
let charSet = Set(str)
var arr = Array(repeating: -1, count: 26)
//97 == 'a'
for char in charSet {
    let index: Int = Int(char.asciiValue! - 97)
    arr[index] = str.firstIndex(of: char)!
}

for element in arr {
    print(element, terminator: " ")
}
