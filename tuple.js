function solution(s) {
    var answer = [];

    s = s.slice(1, s.length - 1);
    for (let i = 0; i < s.length; i++) {
      if (s[i] == '}' && s[i + 1] == ',')
        s = s.replace('},{', '}.{');
    }
    let arrays = s.split('.').map(ele => {
        return ele.slice(1, ele.length - 1).split(',').map(char => Number(char));
    });
    
    arrays.sort((a, b) => a.length - b.length);

    let stack = [];
    arrays.map(arr => {
        let len = arr.length;
        arr.map(numb => {
            if (!stack.includes(numb)) {
                stack.push(numb);
                answer[len] = answer[len] === undefined ? [] : answer[len];
                answer[len].push(numb);
            }
    })})

    return answer.slice(1).map(ele => ele[0]);
}


const s = "{{2},{2,1},{2,1,3},{2,1,3,4}}";
console.log(solution(s));

/* 
[입출력 예]
s								result
"{{2},{2,1},{2,1,3},{2,1,3,4}}"	[2, 1, 3, 4]
"{{1,2,3},{2,1},{1,2,4,3},{2}}"	[2, 1, 3, 4]
"{{20,111},{111}}"				[111, 20]
"{{123}}"						[123]
"{{4,2,3},{3},{2,3,4,1},{2,3}}"	[3, 2, 4, 1]

[제한사항]
s의 길이는 5 이상 1,000,000 이하입니다.
s는 숫자와 '{', '}', ',' 로만 이루어져 있습니다.
숫자가 0으로 시작하는 경우는 없습니다.
s는 항상 중복되는 원소가 없는 튜플을 올바르게 표현하고 있습니다.
s가 표현하는 튜플의 원소는 1 이상 100,000 이하인 자연수입니다.
return 하는 배열의 길이가 1 이상 500 이하인 경우만 입력으로 주어집니다.


*/