typealias info = (Int, Int)
var count: Int = Int(readLine()!)!
var people: [info] = []//[(55, 185), (58, 183), (88, 186), (60, 175), (46, 155)]
var rank: [Int] = Array(repeating: 1, count: count)

for _ in 1...count {
    let temp = readLine()!.split(separator: " ").map{
        Int($0)!
    }
    people.append((temp[0], temp[1]))
}

for pivot in 0..<count {
    for check in 0..<count {
        if pivot == check {continue}
        
        if people[pivot].0 < people[check].0 {
            if people[pivot].1 < people[check].1 {
                rank[pivot] += 1
            }
        }
    }
}

for item in rank {
    print(item, separator: " ")
}
