const fs = require("fs");
const [N, K] = fs
  .readFileSync("/dev/stdin")
  .toString()
  .trim()
  .split(" ")
  .map((ele) => Number(ele));
let answer = [];

let people = Array(N)
  .fill(0)
  .map((_, i) => i + 1);

let index = 0;
// console.log("people: ", people);
while (people.length > 0) {
  if (people.length >= K) {
    index = K - 1;
  } else if (people.length == 1) {
    index = 0;
  } else {
    index = (K - 1) % people.length; // K = 4, [4. 1] => len = 2
    // 3 % 2 = 1
  }
  answer.push(people[index]);
  people = people.slice(index + 1).concat(people.slice(0, index));
  // 2 4
}

console.log("<" + answer.join(", ") + ">");
