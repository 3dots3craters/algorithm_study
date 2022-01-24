FirstWords = input().split('-')
Answer = ''

for i in range(int(len(FirstWords))):
    Answer += FirstWords[i][0]

print(Answer)

# 출처: https://www.acmicpc.net/source/37998096
# case = input().split('-')
# for c in case:
#     print(c[0],end='')
