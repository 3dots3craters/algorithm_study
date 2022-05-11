let numbers = readLine()!.split(separator: " ").map{Int($0)!}
let (M, N, K) = (numbers[0], numbers[1], numbers[2])
var board: [[Int]] = Array(repeating: Array(repeating: 0, count: N), count: M)

for _ in 0..<K {
    let square = readLine()!.split(separator: " ").map{Int($0)!}
    let (x_start, y_start, x_end, y_end) = (square[0], square[1], square[2] - 1, square[3] - 1)
    for i in x_start...x_end {
        for j in y_start...y_end {
            board[i][j] = 1
        }
    }
}

print(board)