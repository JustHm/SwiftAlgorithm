let count: Int = Int(readLine()!)!
let seq = readLine()!.split(separator: " ").map {Int($0)!}
let standard = Int(readLine()!)!

print(seq.filter{ $0==standard }.count)
