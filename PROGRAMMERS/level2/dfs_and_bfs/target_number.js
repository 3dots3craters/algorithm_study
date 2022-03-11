function solution(numbers, target) {
  var answer = 0;

  function dfs(idx, sum, sign) {
    if (sign == 0) sum += numbers[idx];
    else sum -= numbers[idx];
    if (idx == numbers.length - 1) {
      if (sum == target) answer += 1;
      return;
    }
    for (let i = 0; i < 2; i++) {
      dfs(idx + 1, sum, i);
    }
  }

  for (let i = 0; i < 2; i++) {
    dfs(0, 0, i);
  }

  return answer;
}
const numbers = [1, 1, 1, 1, 1];
const target = 3; // 5
console.log(solution(numbers, target));
