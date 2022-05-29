import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var answer = [Int]()
    var prioritiesCopy = [Int]()
    var desks = [(priority: Int, index: Int)]()

    for i in 0..<priorities.count {
        prioritiesCopy.append(priorities[i])
        desks.append((priorities[i], i))
    }

    while !prioritiesCopy.isEmpty {
        let front = desks.removeFirst()
        prioritiesCopy.removeFirst()
        if !prioritiesCopy.isEmpty && prioritiesCopy.max()! > front.priority {
            prioritiesCopy.append(front.priority)
            desks.append(front)
        } else {
            answer.append(front.index);
            if front.index == location {
                break
            }
        }
    }
    
    return answer.count
}

let priorities = [1, 2]
let location = 0
print(solution(priorities, location))

/*

let priorities = [1, 2]
let location = 0
// 정답: 2

*/