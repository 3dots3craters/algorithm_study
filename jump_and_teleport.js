function solution(n)
{
    var ans = 0;

		let number = n;
		while (number > 0) {
			if (number % 2 === 0) {
				number = number / 2;
			}
			else if (number % 2 != 0) {
				number = number - 1;
				ans += 1;
			}
		}

    return ans;
}


const n = 6;
console.log(solution(n));
/* 
입출력 예
N	result
5	2
6	2
5000	5

제한 사항
숫자 N: 1 이상 10억 이하의 자연수
숫자 K: 1 이상의 자연수


*/