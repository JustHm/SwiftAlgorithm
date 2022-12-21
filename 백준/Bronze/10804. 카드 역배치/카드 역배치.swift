var cards = [Int]()
for card in 1...20 {
    cards.append(card)
}
while let data = readLine() {
    let arr = data.split(separator: " ").map({Int($0)!-1})
    cards[arr[0]...arr[1]].reverse()
}
for item in cards {
    print(item, terminator: " ")
}