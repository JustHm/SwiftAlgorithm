import Foundation
// 라이노님 빠른 입력 FileIO
final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
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
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> Int {
        var str = 0
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += Int(now)
            now = read()
        }
        
        return str
    }
}

struct Queue<T> {
    private var queue: [T?] = []
    private var head: Int = 0
    public var count: Int {
        return queue.count - head
    }
    public var isEmpty: Int {
        if queue.isEmpty || count == 0 {
            return 1
        } else {
            return 0
        }
    }
    
    public mutating func push(_ element: T) {
        queue.append(element)
    }
    public mutating func pop() -> T? {
        if isEmpty == 1 {
            return nil
        } else {
            let temp = queue[head]
            head += 1
            return temp
        }
    }
    public func front() -> T? {
        if isEmpty == 1 {
            return nil
        }else {
            return queue[head]
        }
    }
    public func back() -> T? {
        if isEmpty == 1 {
            return nil
        }else {
            return queue.last!
        }
    }
}
var arr = Queue<Int>()
var result = ""
let file = FileIO()
for _ in 0..<file.readInt() {
    //let command = readLine()!.split(separator: " ")
    let cmd = file.readString()
    switch cmd {
    case 448:
        let data = file.readInt()
        arr.push(data)
    case 335:
        if let data = arr.pop() {
            result += "\(data)\n"
        } else {
            result += "-1\n"
        }
    case 553:
        if let data = arr.front() {
            result += "\(data)\n"
        } else {
            result += "-1\n"
        }
    case 443:
        result += "\(arr.count)\n"
    case 401:
        if let data = arr.back() {
            result += "\(data)\n"
        } else {
            result += "-1\n"
        }
    case 559:
        result += "\(arr.isEmpty)\n"
    default:
        break
    }
}
print(result)