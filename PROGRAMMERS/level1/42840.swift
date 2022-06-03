import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let first = [1, 2, 3, 4, 5]
    let second = [2, 1, 2, 3, 2, 4, 2, 5]
    let third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var score = Array(repeating: 0, count: 3)
    var answer = [Int]()

    for i in 0..<answers.count {
        if answers[i] == first[i % first.count] {
            score[0] += 1
        } 
        if answers[i] == second[i % second.count] {
            score[1] += 1
        } 
        if answers[i] == third[i % third.count] {
            score[2] += 1
        }
    }

    let highScore = score.max()!
    for i in 0..<3 {
        if score[i] >= highScore && highScore > 0{
            answer.append(i + 1)
        }
    } 
    
    return answer
}
