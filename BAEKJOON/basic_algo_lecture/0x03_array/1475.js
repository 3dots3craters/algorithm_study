/*

1. 배열을 만들고 

2. 숫자 i 에 따라 배열[i] += 1

3. 숫자 6, 9는 배열[6] += 0.5

4. 배열 원소 중 가장 큰 값 반환

*/

const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim();

let numbers = Array(9).fill(0);
// console.log("input: ", input);
for (let i = 0; i < input.length; i++) {
  if (input[i] == "6" || input[i] == "9") {
    numbers[6] += 0.5;
  } else {
    // console.log("i: ", i);
    numbers[Number(input[i])] += 1;
  }
}
// console.log("numbers: ", numbers);
console.log(Math.ceil(Math.max(...numbers)));
