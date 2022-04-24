const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split("\n");
const N = input[0];
let queue = {}
let front = 0, back = -1, size = 0
let answer = ""

for (let i = 1; i <= N; i++) {
  const command = input[i];
  switch (command) {
    case "front":
        answer += size == 0 ? "-1\n" : `${queue[front]}\n`;
        break;
    case "back":
        answer += size == 0 ? "-1\n" : `${queue[back]}\n`;
        break;
    case "size":
        answer += `${size}\n`;
        break;
    case "pop":
        if (size == 0) {
            answer += "-1\n";
        } else {
            answer += `${queue[front]}\n`;
            front += 1;
            size -= 1;
        }
        break;  
    case "empty":
        answer += size == 0 ? "1\n" : "0\n";
        break;  
    default:
        const num = command.split(" ")[1];
        back += 1;
        queue[back] = num;
        size += 1;
        break;
  }
}

console.log(answer);