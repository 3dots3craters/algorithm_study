function solution(jobs) {
  let works = jobs.map((ele) => {
    return {
      request: ele[0],
      taken: ele[1],
      start: -1,
    };
  });

  works.sort((a, b) => a.request - b.request);

  let [time, total] = [0, 0]; // time은 흐른 시간 그 자체 , total은 각각의 요청을 처리 완료하기까지 걸린 시간을 합한 것

  function minTakenTimeIndex(waited) {
    if (waited.length > 0) {
      let takens = waited.map((ele) => ele.taken);
      let minTakenTime = Math.min(...takens);
      return takens.indexOf(minTakenTime);
    } else {
      return -1;
    }
  }

  function minRequestTime(works) {
    let requests = works.map((ele) => ele.request);
    return Math.min(...requests);
  }

  while (works.length) {
    const waited = works.filter((ele) => ele.request <= time && ele.start < 0);
    const index = minTakenTimeIndex(waited);
    if (index < 0) {
      time = minRequestTime(works);
    } else {
      works[index].start = time;
      total += works[index].start - works[index].request + works[index].taken;
      time += works[index].taken;
      works.splice(index, 1);
    }
  }

  return Math.floor(total / jobs.length);
}

const jobs = [[1000, 1000]];
console.log(solution(jobs));
// [[24, 10], [28, 39], [43, 20], [37, 5], [47, 22], [20, 47], [15, 34], [15, 2], [35, 43], [26, 1]] : 72
// 72가 나와야 하는데 79가 나옴
// [[24, 10], [28, 39], [43, 20], [37, 5], [47, 22], [20, 47], [15, 2], [15, 34], [35, 43], [26, 1]] : 72
// 72가 나와야 하는데 84가 나옴
// 위아래 모두 값이 틀렸을 뿐만 아니라, 순서만 다르지 같은 구성이라 같은 결과값이 나와야 했는데 다른 결과값이 나왔다.

// 통과한 테스트 케이스
// [[0, 3], [1, 9], [2, 6]] : 9
// [[0, 10], [2, 10], [9, 10], [15, 2]] : 14
// [[0, 10], [2, 12], [9, 19], [15, 17]] : 25
// [[0, 1]] : 1
// [[1000, 1000]] : 1000
// [[0, 1], [0, 1], [0, 1]] : 2
// [[0, 3], [1, 9], [2, 6], [30, 3]] : 7
// [[0, 10], [4, 10], [15, 2], [5, 11]] : 15
// [[10, 10], [30, 10], [50, 2], [51, 2]] : 6
// [[1, 9], [1, 4], [1, 5], [1, 7], [1, 3]] : 13
