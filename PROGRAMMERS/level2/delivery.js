function solution(N, road, K) {
  let connected = [];
  let visited = [];

  road.map(([townA, townB, len]) => {
    if (connected[townA] == undefined) connected[townA] = {};
    connected[townA][townB] =
      connected[townA][townB] != undefined
        ? Math.min(len, connected[townA][townB])
        : len;
    if (connected[townB] == undefined) connected[townB] = {};
    connected[townB][townA] =
      connected[townB][townA] != undefined
        ? Math.min(len, connected[townB][townA])
        : len;
  });

  function check(town, distance) {
    if (visited[town] < distance) return;
    visited[town] = distance;
    for (let i in connected[town]) {
      i = Number(i);
      let newDistance = distance + connected[town][i];
      if (newDistance <= K) {
        check(i, newDistance);
      }
    }
  }

  check(1, 0);
  return visited.filter((ele) => ele <= K).length;
}

const N = 5;
const road = [
  [1, 2, 4],
  [1, 3, 1],
  [3, 4, 1],
  [4, 2, 1],
  [2, 5, 1],
];
const K = 4;
console.log(solution(N, road, K));
/* 
입출력 예
N	road	K	result
5	[[1,2,1],[2,3,3],[5,2,2],[1,4,2],[5,3,1],[5,4,2]]	3	4
6	[[1,2,1],[1,3,2],[2,3,2],[3,4,3],[3,5,2],[3,5,3],[5,6,1]]	4	4

제한사항
마을의 개수 N은 1 이상 50 이하의 자연수입니다.
road의 길이(도로 정보의 개수)는 1 이상 2,000 이하입니다.
road의 각 원소는 마을을 연결하고 있는 각 도로의 정보를 나타냅니다.
road는 길이가 3인 배열이며, 순서대로 (a, b, c)를 나타냅니다.
a, b(1 ≤ a, b ≤ N, a != b)는 도로가 연결하는 두 마을의 번호이며, c(1 ≤ c ≤ 10,000, c는 자연수)는 도로를 지나는데 걸리는 시간입니다.
두 마을 a, b를 연결하는 도로는 여러 개가 있을 수 있습니다.
한 도로의 정보가 여러 번 중복해서 주어지지 않습니다.
K는 음식 배달이 가능한 시간을 나타내며, 1 이상 500,000 이하입니다.
임의의 두 마을간에 항상 이동 가능한 경로가 존재합니다.
1번 마을에 있는 음식점이 K 이하의 시간에 배달이 가능한 마을의 개수를 return 하면 됩니다.


*/

/*

1. 마을 간의 연결 정보를 담고 있는 배열 생성
	connected = [ undefined, {2: 1, 4: 2 }, {1: 1, 3: 3, 5: 2}, .... ]
2. 방문한 마을을 담아둘 변수 생성
	visited = []
3. 거리가 K 이하인 마을을 담아둘 변수 생성
	possible = new Set()
4. 재귀 돌면서 거리가 K 이하인 마을 담기
	function check(시작점이 될 마을 번호=town, 지금까지의 거리=distance) {
		visited.push(town);
		for (let i in connected[town]) {
			if (visited.includes(i)) continue;
			let newDistance = distance + connected[town][i];
			if (newDistance <= K) {
				possible.add(i);
				check(i, newDistance);
			}
		}
	}
5. possible의 크기를 반환
	return possible.size;

*/
