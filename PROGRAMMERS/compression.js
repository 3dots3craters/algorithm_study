function solution(msg) {
  var answer = [];
  let array = [];

  let dictionary = {};
  Array(26)
    .fill(0)
    .map((ele, i) => {
      let alphabet = String.fromCharCode(65 + i);
      dictionary[alphabet] = i + 1;
      array.push(alphabet);
    });

  let start = 0;
  while (start < msg.length) {
    for (let end = msg.length; end > start; end--) {
      let word = msg.substring(start, end);
      if (dictionary[word]) {
        answer.push(dictionary[word]);
        let newWord = msg.substring(start, end + 1);
        array.push(newWord);
        dictionary[newWord] = array.length;
        start = end;
        break;
      }
    }
  }

  return answer;
}

const msg = "KAKAO";

console.log(solution(msg));

/* 

입출력 예제
msg	answer
KAKAO	[11, 1, 27, 15]
TOBEORNOTTOBEORTOBEORNOT	[20, 15, 2, 5, 15, 18, 14, 15, 20, 27, 29, 31, 36, 30, 32, 34]
ABABABABABABABAB	[1, 2, 27, 29, 28, 31, 30]




*/
