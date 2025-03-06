class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var answer: [Int] = []
        for i in nums.enumerated() {
            var second = i.offset + 1
            while (second < nums.count) {
                let sum = i.element + nums[second]
                if target == sum {
                    answer = [i.offset, second]
                    print(sum, target)
                    break
                }
                else { second += 1 }
            }
            if !answer.isEmpty { break }
        }
        return answer
    }
}