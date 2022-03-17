const fs = require("fs");
const input = fs
  .readFileSync("/dev/stdin")
  .toString()
  .trim()
  .split("\n")
  .map((ele) => Number(ele));

let numbers = Array(10).fill(0);

let result = 1;
for (let num of input) {
  result *= num;
}

const resultString = String(result);

for (let i = 0; i < resultString.length; i++) {
  const index = Number(resultString[i]);
  numbers[index] += 1;
}

for (let i = 0; i < numbers.length; i++) {
  console.log(numbers[i]);
}
