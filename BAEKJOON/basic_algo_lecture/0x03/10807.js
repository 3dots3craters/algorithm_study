const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split("\n");

const n = input[0];
const numbers = input[1].split(" ");
const v = input[2];

console.log(numbers.filter((ele) => ele == v).length);
