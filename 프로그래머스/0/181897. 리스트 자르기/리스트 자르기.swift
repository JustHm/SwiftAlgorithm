import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    switch n {
        case 1:
        return Array(num_list[0...slicer[1]])
        case 2:
        return Array(num_list[slicer[0]...])
        case 3:
        return Array(num_list[slicer[0]...slicer[1]])
        case 4:
        return Array(num_list[slicer[0]...slicer[1]].enumerated().filter{$0.offset % slicer[2] == 0}.map{$0.element})
        default:
        return []
    }
}