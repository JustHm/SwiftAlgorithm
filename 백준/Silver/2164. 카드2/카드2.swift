var cards = Array((1...Int(readLine()!)!))
var head = 0
while cards.count - head > 1 {
    head += 1
    let card = cards[head]
    head += 1
    cards.append(card)
}
print(cards[head])