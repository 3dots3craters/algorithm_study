
# 빈 문자열 변수 A
# for (let i = 0; i < 문장수 - 1; i++) {
# 	for (let j = 0; j < i번째 문장 길이; j += i + 1) {
# 		i번째 문장의 j번째 글자 A에 담기
# 	}
# 	A 출력
# }

count = 1
while (1):
    try:
        answer = ''
        count = count + 1
        string = input()
        strLen = len(string)
        if (string == "Was it a cat I saw?"):
            count = 1
            continue
        index = 0
        while index < strLen:
            answer = answer + string[index]
            index = index + count
        print(answer)
    except EOFError:
        break


#
