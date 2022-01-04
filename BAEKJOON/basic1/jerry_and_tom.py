import fractions

A, B = map(int, input().split())

newB = B
newA = B - A


new = fractions.Fraction(newA, newB)
print(new.numerator, new.denominator)

# 참고자료
# https://steemit.com/kr/@coinchuu/python

# A, B = map(int, input().split())
# print(B-A, B)
