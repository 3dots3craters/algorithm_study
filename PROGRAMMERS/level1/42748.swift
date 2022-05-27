import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {

    var answer = [Int]()

    for command in commands {
        let (i, j, k) = (command[0], command[1], command[2])
        let sortedArr = array[(i-1)..<j].sorted()
        let number = sortedArr[k-1]
        answer.append(number)
    }
    
    return answer
}

let array = [1, 5, 2, 6, 3, 7, 4]
let commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]
print(solution(array, commands))