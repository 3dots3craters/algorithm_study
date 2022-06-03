let directions = [[-1, 0], [1, 0], [0, 1], [0, -1]]
let NM = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M) = (NM[0], NM[1])
var map = [[Int]]()
var meltingAmount = Array(repeating: Array(repeating: 0, count: M), count: N)
var answer = 0
var isBroken = false

func getNumberOfAdjacentIce(_ row: Int, _ col: Int, _ map: [[Int]]) -> Int {
    var count = 0

    for dir in directions {
        let (newRow, newCol) = (row + dir[0], col + dir[1])
        if (0..<N).contains(newRow) && (0..<M).contains(newCol) && map[newRow][newCol] == 0 {
            count += 1
        } 
    }
    return count
}


func bfs(_ row: Int, _ col: Int, _ map: [[Int]], _ visited: inout [[Bool]]) {
    
    var queue = [[Int]]()
    queue.append([row, col])
    visited[row][col] = true

    while !queue.isEmpty {
        let curr = queue.removeFirst()
        for dir in directions {
            let (newRow, newCol) = (curr[0] + dir[0], curr[1] + dir[1])
            if (0..<N).contains(newRow) && (0..<M).contains(newCol) && visited[newRow][newCol] == false && map[newRow][newCol] > 0 {
                queue.append([newRow, newCol])
                visited[newRow][newCol] = true
            }  
        }
    }

    return
}


func isOnePiece(in map: [[Int]], flag isBroken: inout Bool, meltingAmount: inout [[Int]]) -> Bool {
    
    var visited = Array(repeating: Array(repeating: false, count: M), count: N)
    var count = 0

    for row in 0..<N {
        for col in 0..<M {
            if map[row][col] > 0 {
                meltingAmount[row][col] = getNumberOfAdjacentIce(row, col, map);
                if visited[row][col] == false {
                    bfs(row, col, map, &visited)
                    count += 1
                }
            }
        }
    }

    if count > 1 {
        isBroken = true
        return false
    } else if count == 1 {
        return true
    } else {
        return false
    }
}

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map{Int($0)!}
    map.append(line)
}

while isOnePiece(in: map, flag: &isBroken, meltingAmount: &meltingAmount) {

    for row in 0..<N {
        for col in 0..<M {
            if map[row][col] > 0 {
                map[row][col] -= meltingAmount[row][col]
                if map[row][col] < 0 {
                    map[row][col] = 0
                }
            }
        }
    }
    answer += 1
}

if isBroken {
    print(answer)
} else {
    print(0)
}