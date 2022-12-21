var roomNumber: Int = Int(readLine()!)!
var numberSet = Array(repeating: 0, count: 10)

for char in String(roomNumber) {
    let index = Int(String(char))!
    numberSet[index] += 1
}
numberSet[9] += numberSet[6]
numberSet[6] = 0

if numberSet.firstIndex(of: numberSet.max()!) == 9 {
    print((numberSet[9]/2) + (numberSet[9]%2))
} else {
    print(numberSet.max()!)
}