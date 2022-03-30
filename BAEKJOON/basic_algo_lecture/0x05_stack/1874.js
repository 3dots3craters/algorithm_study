const fs = require("fs");
const input = fs
  .readFileSync("/dev/stdin")
  .toString()
  .trim()
  .split("\n")
  .map((ele) => Number(ele));
const n = input[0];

let count = 1;
let stack = [];
let answer = [];
let hasAnswer = true;

for (let i = 0; i < n; i++) {
  const number = input[i + 1];
  while (number >= count) {
    stack.push(count);
    answer.push("+");
    count += 1;
  }
  if (number == stack[stack.length - 1]) {
    stack.pop();
    answer.push("-");
  } else {
    hasAnswer = false;
  }
}

if (hasAnswer) console.log(answer.join("\n"));
else console.log("NO");
