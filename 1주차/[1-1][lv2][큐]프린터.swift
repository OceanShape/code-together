import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities // 원형 큐
    var nums = queue.sorted(by: >) // 내림차순으로 정렬된 배열
    var numsIndex = 0

    var queueIndex = 0
    var count = 0
    repeat {
        // 조건에 부합할 경우, 인덱스가 맞으면
        if queue[queueIndex] == nums[numsIndex] {
            count = count + 1
            if queueIndex == location {
                return count
            }
            queue[queueIndex] = 0
            numsIndex = numsIndex + 1
        }
        queueIndex = (queueIndex + 1) % priorities.count
    } while true
    return 0
}
