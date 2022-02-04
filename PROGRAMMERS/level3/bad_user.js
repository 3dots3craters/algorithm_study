/*

1. banned_id 정렬
2. user_id 정렬 
3. banned_id를 돌면서
    user_id의 길이가 일치하는 경우만 
        banned_id와 user_id 비교
    *을 제외하고 일치하면 
        제재 id 목록.add(user_id)
        해당 user_id의 값 1로 바꾸기
            set에 제재 id 목록을 담기 -> 문자열로 만들어서 담기
4. set의 개수 반환

*/

function isCorrect(user_id, banned_id) {
  for (let i in user_id) {
    if (banned_id[i] == "*") {
      continue;
    } else if (user_id[i] != banned_id[i]) {
      return false;
    }
  }
  return true;
}

function solution(user_id, banned_id) {
  function recursive(index) {
    if (index == banned_id.length) {
      let bad_id_set = new Set(bad_id_array);
      if (bad_id_set.size == banned_id.length) {
        let copy_bad_id_array = bad_id_array.slice();
        answer.add(copy_bad_id_array.sort().join(""));
      }
      return;
    }
    for (let i in banned_id_array[index]) {
      bad_id_array[index] = banned_id_array[index][i];
      recursive(index + 1);
    }
  }

  banned_id.sort().reverse();
  user_id.sort().reverse();

  let banned_id_array = [];
  for (let i in banned_id) {
    let banned_id_set = new Set();
    for (let j in user_id) {
      if (user_id[j].length == banned_id[i].length) {
        if (isCorrect(user_id[j], banned_id[i])) {
          banned_id_set.add(user_id[j]);
        }
      }
    }
    banned_id_array.push([...banned_id_set]);
  }

  let answer = new Set();
  let bad_id_array = [];
  recursive(0, banned_id_array);

  return answer.size;
}

const user_id = ["frodo", "fradi", "crodo", "abc123", "frodoc"];
const banned_id = ["fr*d*", "*rodo", "******", "******"];
console.log(solution(user_id, banned_id));
/* 

[입출력 예]
user_id	banned_id	result
["frodo", "fradi", "crodo", "abc123", "frodoc"]	["fr*d*", "abc1**"]	2
["frodo", "fradi", "crodo", "abc123", "frodoc"]	["*rodo", "*rodo", "******"]	2
["frodo", "fradi", "crodo", "abc123", "frodoc"]	["fr*d*", "*rodo", "******", "******"]	3


[제한사항]
user_id 배열의 크기는 1 이상 8 이하입니다.
user_id 배열 각 원소들의 값은 길이가 1 이상 8 이하인 문자열입니다.
응모한 사용자 아이디들은 서로 중복되지 않습니다.
응모한 사용자 아이디는 알파벳 소문자와 숫자로만으로 구성되어 있습니다.
banned_id 배열의 크기는 1 이상 user_id 배열의 크기 이하입니다.
banned_id 배열 각 원소들의 값은 길이가 1 이상 8 이하인 문자열입니다.
불량 사용자 아이디는 알파벳 소문자와 숫자, 가리기 위한 문자 '*' 로만 이루어져 있습니다.
불량 사용자 아이디는 '*' 문자를 하나 이상 포함하고 있습니다.
불량 사용자 아이디 하나는 응모자 아이디 중 하나에 해당하고 같은 응모자 아이디가 중복해서 제재 아이디 목록에 들어가는 경우는 없습니다.
제재 아이디 목록들을 구했을 때 아이디들이 나열된 순서와 관계없이 아이디 목록의 내용이 동일하다면 같은 것으로 처리하여 하나로 세면 됩니다.
*/
