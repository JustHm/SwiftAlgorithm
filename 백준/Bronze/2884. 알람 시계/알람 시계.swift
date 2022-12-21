var alarm: [Int] = readLine()!.split(separator: " ").map({Int($0)!})
// -45min
var temp = alarm[1] - 45
if temp < 0 {
    alarm[0] -= 1
    if alarm[0] < 0 {
        alarm[0] = 23
    }
    temp = 60 + temp
}
print(alarm[0]%24, temp)