function solution2(n) {
  var answer = [];

  let remains = n % 7;
  let quotient = Math.floor(n / 7); //일단은 몫과 나머지를 구해줍니다.

  console.log("remains: ", remains, "quotient: ", quotient);
  answer[0] = quotient * 2; //answer[0]에 최솟값을 넣어주는 건데 일단 7로 나눠서 몫이 존재한다는 건 최소 일주일 하나짜리가 통으로 포함된다는 얘기니까
  //무조건 토, 일 2개의 휴일이 카운팅 되어야 해요.
  //그래서 몫에다가 2를 곱해줘서 휴일의 수를 카운팅합니다. 오케이? 오케이
  if (remains > 0 && remains < 6 && quotient === 0)
    //휴일이 최소 하루는 포함되어야 하니까 최솟값에서도 나머지가 존재할 땐 무조건 최소 1 카운팅하게 해주면 됩니다.
    answer[0] += 1;
  //6부터는 최소 하나는 휴일이 포함될 수밖에 없잖아요? 그래서 나머지가 6일 땐 1을 또 카운팅해줍니다. 오케이?
  else if (remains === 6) answer[0] += 1;
  answer[1] = quotient * 2; //그리고 여기는 최댓값 넣어주는 부분. 일단 위와 똑같이 여기도 몫에다가 2를 곱해줘서 휴일의 수를 카운팅합니다.
  if (remains == 1)
    //여긴 이제 최댓값 구하는 부분이고 그럼 나머지가 1일 땐 토요일이나 일요일이 그
    answer[1] += 1;
  else if (remains > 1) answer[1] += 2;
  //n이 1이면 ? 일단 몫은 0이 되니까
  //휴일 카운팅에 영향을 안 미치고
  //그럼 나머지가 1이 되는 건데 그땐 최솟값에서는 아무것도 카운팅 안 하고
  //왜요?
  //아 휴일을 포함해야 되네 최소 하루는

  /*
    n을 7로 나누면
    최솟값
        몫 > 1: ++2
        나머지 == 6: ++1
    최댓값
        몫 > 1: ++2
        나머지 == 1: ++1
        나머지 > 1: ++2
    
    */
  return answer;
}

console.log(solution2(13));

function solution3(n) {
  /*
			1 -> 1~9
			2 -> 90 * 2 = 180 -> 10~189
			3 -> 100~999 -> 900 * 3 = 2700 -> 190~2889
			4 -> 9000 * 4 = 36000
			5 -> 90000 * 5
			6
			7
			8
			9
			10
	*/
  k = 9;
  i = 1;
  while (n > k) {
    ++i;
    k += Math.pow(10, i - 1) * 9 * i;
  }
  n -= k - Math.pow(10, i - 1) * 9 * i;

  let str = "";
  let number = Math.pow(10, i - 1);
  while (str.length < n) {
    str += "" + number;
    number++;
  }
  return Number(str[n - 1]);
}

function solution33(n) {
  let str = "";
  let number = 1;
  while (str.length < n) {
    str += "" + number;
    number++;
  }

  return Number(str[n - 1]);
}
/* 
		입출력 예
	n	result
	5	5
	15	2
		*/

const n = 100100000;
console.time("label1");
console.log(solution33(n));
console.timeEnd("label1");
console.time("label");
console.log(solution3(n));
console.timeEnd("label");
