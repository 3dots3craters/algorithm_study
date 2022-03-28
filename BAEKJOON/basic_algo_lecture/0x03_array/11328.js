const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split("\n");
const N = Number(input[0]);

const canGetByStrfry = (first, second) => {
  first = first.split("").sort().join("");
  second = second.split("").sort().join("");
  if (first == second) {
    return true;
  }
  return false;
};

for (let i = 1; i < N + 1; i++) {
  const [first, second] = input[i].split(" ");
  if (canGetByStrfry(first, second)) {
    console.log("Possible");
  } else {
    console.log("Impossible");
  }
}
