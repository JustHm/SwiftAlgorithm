var answer = 0
for _ in 0..<Int(readLine()!)! {
    let str = readLine()!
    var words: [Character] = []
    answer += 1
    guard str != "." else { break }
    for char in str {
        if words.last == char {
            words.removeLast()
            continue
        }
        words.append(char)
    }
    if !words.isEmpty {
        answer -= 1
    }
}
print(answer)