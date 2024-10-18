let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var count = 0

for i in 1...input[0] {
    if input[0] % i == 0 { count += 1 }
    if count == input[1] {
        print(i)
        break
    }
}

if count < input[1] { print("0")}