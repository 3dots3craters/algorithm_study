const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split("\n");

// answer.push("input: ", input);
// input:  [
//   '14',     'push 1', 'push 2',
//   'top',    'size',   'empty',
//   'pop',    'pop',    'pop',
//   'size',   'empty',  'pop',
//   'push 3', 'empty',  'top'
// ]

const N = Number(input[0]);
let stack = [];
let answer = [];

for (let i = 0; i < N; i++) {
  let command = input[i + 1];
  switch (command) {
    case "top":
      if (stack.length == 0) answer.push(-1);
      else answer.push(stack[stack.length - 1]);
      break;
    case "size":
      answer.push(stack.length);
      break;
    case "pop":
      if (stack.length == 0) answer.push(-1);
      else answer.push(stack.pop());
      break;
    case "empty":
      if (stack.length == 0) answer.push(1);
      else answer.push(0);
      break;
    default:
      const X = Number(command.split(" ")[1]);
      stack.push(X);
      break;
  }
}

console.log(answer.join("\n"));

// 출력은 모아뒀다가 한꺼번에 하는 게 더 빠르다.
