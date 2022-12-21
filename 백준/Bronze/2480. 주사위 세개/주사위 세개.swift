var dice: [Int] = readLine()!.split(separator: " ").map({Int($0)!})

if dice[0] == dice[1] && dice[0] == dice[2] {
    print(10000 + dice[0] * 1000)
} else if dice[0] == dice[1] || dice[0] == dice[2] {
    print(1000 + dice[0] * 100)
} else if dice[1] == dice[2] {
    print(1000 + dice[1] * 100)
} else {
    let bigNum = dice.max()!
    print(bigNum * 100)
}