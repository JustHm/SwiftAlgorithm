import Foundation
while true {
    var input = readLine()!.split(separator: " ").map({Int($0)!}).sorted(by: <)
    let result = pow(Decimal(input[0]), 2) + pow(Decimal(input[1]), 2)
    if result == 0 {
        break
    }
    else if result == pow(Decimal(input[2]),2) {
        print("right")
    }
    else {
        print("wrong")
    }
}
