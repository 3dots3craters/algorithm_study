const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split("\n");
const N = Number(input[0]);

for (let i = 0; i < N; i++) {
  const commands = input[1 + i].split("");
  let [leftStack, rightStack] = [[], []];
  for (let j = 0; j < commands.length; j++) {
    const cmd = commands[j];
    switch (cmd) {
      case "-":
        if (leftStack.length > 0) leftStack.pop();
        break;
      case "<":
        if (leftStack.length > 0) rightStack.push(leftStack.pop());
        break;
      case ">":
        if (rightStack.length > 0) leftStack.push(rightStack.pop());
        break;
      default:
        leftStack.push(cmd);
        break;
    }
  }
  console.log(leftStack.join("") + rightStack.reverse().join(""));
}
