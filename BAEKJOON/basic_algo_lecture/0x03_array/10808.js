const fs = require("fs");
const S = fs.readFileSync("/dev/stdin").toString().trim();
let alphabet = Array(26).fill(0);

for (let i = 0; i < S.length; i++) {
  const index = S.charCodeAt(i) - 97;
  alphabet[index] += 1;
}
console.log(alphabet.join(" "));
