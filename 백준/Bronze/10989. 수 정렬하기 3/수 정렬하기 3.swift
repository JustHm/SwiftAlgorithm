import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(try! fileHandle.readToEnd()!) + CollectionOfOne(0)
        index = 0
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10 || now == 32 { now = read() }
        
        if now == 45{
            isPositive.toggle()
            now = read()
        }
        
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now - 48)
            now = read()
        }

        return sum * (isPositive ? 1 : -1)
    }
}
let fileIO = FileIO()
let reps = fileIO.readInt()
var arr: [Int] = Array(repeating: 0, count: 10001)
for _ in 0..<reps {
    let index = fileIO.readInt()
    arr[index] += 1
}
var answer = ""
for index in 1..<arr.count {
    if arr[index] != 0 {
        answer += String(repeating: "\(index)\n", count: arr[index])
    }
}
print(answer)