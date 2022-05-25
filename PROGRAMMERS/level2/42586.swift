import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {

    var answer: [Int] = []
    var count = 0
    var distributionDate = 0

    for i in 0..<progresses.count {
        let days = Int(ceil(Double(100 - progresses[i]) / Double(speeds[i])))
        if count == 0 {
            distributionDate = days 
            count += 1
        } else if days > distributionDate {
            answer.append(count)
            distributionDate = days
            count = 1
        } else {
            count += 1
        }
    }
    answer.append(count)

    return answer
}

let progresses = [95, 90, 99, 99, 80, 99]
let speeds = [1, 1, 1, 1, 1, 1]
print(solution(progresses, speeds))