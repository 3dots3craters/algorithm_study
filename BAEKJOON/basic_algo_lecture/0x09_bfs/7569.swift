let numbers = readLine()!.split(separator: " ").map{Int($0)!}
let (M, N, H) = (numbers[0], numbers[1], numbers[2])
var boxes = [[[Int]]]()
var queue = [(Int, Int, Int)]()
var rawTomato = 0

for i in 0..<H {
    var box = [[Int]]()
    for j in 0..<N {
        box.append(readLine()!.split(separator: " ").map{Int($0)!})
        for k in 0..<M {
            if box[j][k] == 1 {
                queue.append((i, j, k))
            } else if box[j][k] == -1 {
                rawTomato += 1
            }
        }
    }
    boxes.append(box)
}

let directions = [(0, 0, 1), (0, 0, -1), (0, 1, 0), (0, -1, 0), (1, 0, 0), (-1, 0, 0)]
var front = 0
var answer = 0

while true {
    let queueLen = queue.count - front
    if queueLen == 0 {
        answer -= 1
        break
    } else if front == 0 && queueLen + rawTomato == H * M * N {
        break
    }
    answer += 1
    for l in front..<(front + queueLen) {
        let (i, j, k) = queue[l]
        for dir in directions {
            let (newI, newJ, newK) = (i + dir.0, j + dir.1, k + dir.2)
            if (0..<H).contains(newI) && (0..<N).contains(newJ) && (0..<M).contains(newK) 
                && boxes[newI][newJ][newK] == 0 {
                    queue.append((newI, newJ, newK))
                    boxes[newI][newJ][newK] = 1
                }
        }
    }
    front += queueLen
}

for i in 0..<H {
    for j in 0..<N {
        if boxes[i][j].contains(0) {
            answer = -1
        }
    }
}

print(answer)