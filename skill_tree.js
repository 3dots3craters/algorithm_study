function solution(skill, skill_trees) {
  var answer = 0;

  skill_trees.map((tree) => {
    let stack = skill.split("").reverse();
    let possible = true;
    for (let i = 0; i < tree.length; i++) {
      if (stack.includes(tree[i])) {
        if (stack[stack.length - 1] != tree[i]) {
          possible = false;
          break;
        } else {
          stack.pop();
        }
      }
    }
    if (possible) answer += 1;
  });

  return answer;
}

const skill = "CBD";
const skill_trees = ["BACDE", "CBADF", "AECB", "BDA"];
console.log(solution(skill, skill_trees));

/* 
입출력 예
skill	skill_trees	return
"CBD"	["BACDE", "CBADF", "AECB", "BDA"]	2


제한 조건
스킬은 알파벳 대문자로 표기하며, 모든 문자열은 알파벳 대문자로만 이루어져 있습니다.
스킬 순서와 스킬트리는 문자열로 표기합니다.
예를 들어, C → B → D 라면 "CBD"로 표기합니다
선행 스킬 순서 skill의 길이는 1 이상 26 이하이며, 스킬은 중복해 주어지지 않습니다.
skill_trees는 길이 1 이상 20 이하인 배열입니다.
skill_trees의 원소는 스킬을 나타내는 문자열입니다.
skill_trees의 원소는 길이가 2 이상 26 이하인 문자열이며, 스킬이 중복해 주어지지 않습니다.



*/
