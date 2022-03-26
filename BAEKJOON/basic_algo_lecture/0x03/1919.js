const fs = require("fs");
let [first, second] = fs
  .readFileSync("/dev/stdin")
  .toString()
  .trim()
  .split("\n")
  .map((ele) => ele.split(""));

const allLen = first.length + second.length;
let commonCharacters = [];

for (let i = 0; i < first.length; i++) {
  if (second.includes(first[i])) {
    commonCharacters.push(second.splice(second.indexOf(first[i]), 1));
  }
}

console.log(allLen - 2 * commonCharacters.length);
