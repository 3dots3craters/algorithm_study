const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split("\n");

const N = Number(input[0]);
const tops = input[1].split(" ").map((ele) => Number(ele));
let answer = Array(N).fill(0);
let stack = [];

for (let i = N - 1; i >= 0; i--) {
  while (stack.length > 0 && tops[stack[stack.length - 1]] <= tops[i]) {
    answer[stack.pop()] = i + 1;
  }
  stack.push(i);
}

console.log(answer.join(" "));
