import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var arr = my_string.map{$0}
    arr[s...e].reverse()
    return String(arr)
}