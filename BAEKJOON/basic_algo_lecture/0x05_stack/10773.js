const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split("\n");

const K = input[0];
let stack = [];

for (let i = 0; i < K; i++) {
  const money = Number(input[i + 1]);
  if (money == 0) stack.pop();
  else stack.push(money);
}

const sum = stack.reduce((prev, curr) => prev + curr, 0);
console.log(sum);

// 빈 배열에서 초기값 없이 reduce()를 호출하면 오류가 발생합니다.
