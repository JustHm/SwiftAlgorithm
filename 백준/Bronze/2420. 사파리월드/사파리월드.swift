var result = readLine()!.split(separator: " ").map{Int($0)!}
print(abs(result[0]-result[1]))