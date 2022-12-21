let reps = Int(readLine()!)!
var result = 0

func isDupWord(_ str: String) -> Bool {
    var stack = [Character]()
    for char in str {
        if stack.contains(char) {
            if stack.last != char {
                return false
            }
        }
        stack.append(char)
    }
    return true
}

for _ in 0..<reps {
    let str = readLine()!
    if str.count <= 2 {
        result += 1
        continue
    } else if isDupWord(str) {
        result += 1
    }
}
print(result)