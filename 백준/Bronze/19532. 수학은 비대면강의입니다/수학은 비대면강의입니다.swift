let input = readLine()!.split(separator: " ").map{Int(String($0))!}

func findNumbers(a: Int, b: Int, c: Int, d: Int, e: Int, f: Int) {
    for x in -999...999 {
        for y in -999...999 {
            if c == ((a*x) + (b*y)) && f == ((d*x) + (e*y))
            {
                print("\(x) \(y)")
                return
            }
        }
    }
}
findNumbers(a: input[0], b: input[1], c: input[2], d: input[3], e: input[4], f: input[5])