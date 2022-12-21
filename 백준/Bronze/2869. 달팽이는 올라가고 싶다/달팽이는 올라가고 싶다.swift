var input = readLine()!.split(separator: " ").map({Int($0)!})
let result = (input[2] - input[1]) / (input[0] - input[1])
let remain = (input[2] - input[1]) % (input[0] - input[1])
print(result + (remain == 0 ? 0 : 1))