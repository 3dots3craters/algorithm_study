/*

이중 반복문


*/

const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split("\n");

const n = input[0];
const numbers = input[1]
  .split(" ")
  .map((ele) => Number(ele))
  .sort((a, b) => a - b);
const x = input[2];
let answer = 0;
let start = 0;
let end = n - 1;
// console.log("numbers: ", numbers);

while (start != end) {
  if (numbers[start] + numbers[end] == x) {
    answer++;
    start++;
  } else if (numbers[start] + numbers[end] > x) {
    end--;
  } else {
    start++;
  }
}
console.log(answer);
