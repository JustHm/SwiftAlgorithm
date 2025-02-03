import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    if let answer = myString.range(of: ".*\(pat)",options: .regularExpression) {
        return String(myString[answer])
    }
    return ""
}