import Foundation

func solution(_ myStr:String) -> [String] {
    let answer = myStr.split(whereSeparator: { ["a","b","c"].contains($0)}).map{String($0)}
    return answer.isEmpty ? ["EMPTY"] : answer
}