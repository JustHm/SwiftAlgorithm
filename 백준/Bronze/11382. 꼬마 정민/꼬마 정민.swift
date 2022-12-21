var result = readLine()!.split(separator: " ").map{Int($0)!}
print(result.reduce(0, +))