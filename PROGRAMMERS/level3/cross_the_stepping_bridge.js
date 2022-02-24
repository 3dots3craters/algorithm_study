/*

1. stones 중에 최솟값을 찾는다.

2. 최솟값 이후부터 1씩 줄여가며 카운팅

3. 첫번째로 0이 나오는 인덱스 찾기

*/

function solution(stones, k) {
  let min = Math.min(...stones);
  let max = Math.max(...stones);
  let mid = 0;

  while (min <= max) {
    mid = Math.floor((min + max) / 2);
    let copyStones = stones.slice().map((num) => {
      if (num - mid + 1 < 0) return 0;
      else return num - mid + 1;
    });
    // console.log(`copyStones: ${copyStones}`);
    // console.log(`max: ${max}, min: ${min}`);
    let on = true;
    while (on && copyStones.indexOf(0) != -1) {
      const start = copyStones.indexOf(0);
      let i;
      for (i = start; i < copyStones.length; i++) {
        if (copyStones[i] > 0) break;
        else copyStones[i] -= 1;
      }
      if (i - start + 1 > k) on = false;
    }
    if (on) min = mid + 1;
    else max = mid - 1;
    // console.log(`on: ${on}`);
  }
  // console.log(`max: ${max}, min: ${min}`);

  return Math.floor((min + max) / 2);
}

const stones = [1, 1, 1, 1, 1, 2, 4, 5, 3, 2, 1, 4, 2, 5, 1];
const k = 5;
console.log(solution(stones, k));
/* 
[입출력 예]
stones	k	result
[2, 4, 5, 3, 2, 1, 4, 2, 5, 1]	3	3

[제한사항]
징검다리를 건너야 하는 니니즈 친구들의 수는 무제한 이라고 간주합니다.
stones 배열의 크기는 1 이상 200,000 이하입니다.
stones 배열 각 원소들의 값은 1 이상 200,000,000 이하인 자연수입니다.
k는 1 이상 stones의 길이 이하인 자연수입니다.

*/
