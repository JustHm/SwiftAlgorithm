import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    return code.map{String($0)}.enumerated().filter{$0.offset % q == r}.map{$0.element}.joined()
}