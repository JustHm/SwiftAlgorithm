var time = readLine()!.split(separator: " ").map({Int($0)!})
var during = Int(readLine()!)!

time[1] += during
time[0] += time[1]/60
print(time[0]%24, time[1]%60)