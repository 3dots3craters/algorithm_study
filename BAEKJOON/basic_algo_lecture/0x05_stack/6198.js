const fs = require("fs");
const input = fs
  .readFileSync("/dev/stdin")
  .toString()
  .trim()
  .split("\n")
  .map((ele) => Number(ele));

// console.log("input: ", input);
// input: [6, 10, 3, 7, 4, 12, 2];
let start = new Date(); // 시작
let count = 0;
let stack = [];
const N = input[0];

for (let i = 1; i < N + 1; i++) {
  while (stack.length > 0 && stack[stack.length - 1] <= input[i]) {
    stack.pop();
  }
  count += stack.length;
  stack.push(input[i]);
}

console.log(count);
let end = new Date();
console.log("경과시간: ", end - start); // 경과시간(밀리초)
