const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split("\n");
input.shift();

const set = new Set(input);
const words = Array.from(set);

words.sort((a, b) => {
  console.log(`a < b: ${a < b}, a: ${a}, b: ${b}`);
  if (a.length != b.length) return a.length - b.length;
  else {
    if (a < b) return -1;
    if (a > b) return 1;
    if (a === b) return 0;
  }
});

console.log(words.join("\n"));
