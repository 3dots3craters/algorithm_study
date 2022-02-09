# 문제 조건
# 1. 비밀번호는 알파벳 대문자로만 구성이 되어 있다.


while(1):
    try:
        [h, x] = list(map(int, input().split()))
        remember = list(input())
        # list를 이용해서 문자열을 문자 배열로 분할한다.
        # 참고자료: https://www.delftstack.com/ko/howto/python/split-string-to-a-list-of-characters/#list%25ED%2595%25A8%25EC%2588%2598%25EB%25A5%25BC-%25EC%2582%25AC%25EC%259A%25A9%25ED%2595%2598%25EC%2597%25AC-python%25EC%2597%2590%25EC%2584%259C-%25EB%25AC%25B8%25EC%259E%2590%25EC%2597%25B4%25EC%259D%2584-char-%25EB%25B0%25B0%25EC%2597%25B4%25EB%25A1%259C-%25EB%25B6%2584%25ED%2595%25A0
        for i in range(x):
            # range 안에 반복 횟수를 적는다.
            # 참고자료: https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=jodi999&logNo=221445789917
            copyRemember = remember.copy()
            # deepcopy 함수를 이용하여 깊은 복사를 한다.
            # 참고자료: https://crackerjacks.tistory.com/14
            str = input()
            for alphabet in str:
                if len(copyRemember) == 0:
                    break
                elif copyRemember[0] == alphabet:
                    # 파이썬에는 else if는 없고 그와 같은 역할을 하는 elif 라는 게 있다.
                    # 참고자료: http://tcpschool.com/python/control_if
                    copyRemember.pop(0)
            if len(copyRemember):
                print("false")
            else:
                print("true")
    except EOFError:
        break
