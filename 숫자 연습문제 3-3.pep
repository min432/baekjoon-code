pep/8 연습문제

숫자를 하나씩 입력받으면서, 숫자 0이 입력되면 프로그램 동작을 멈추는 프로그램. 입력된 숫자들 중에서 양수들의 합을 마지막에 출력하는 프로그램.
이 프로그램을 작성해보자

정답 예시:
BR b
a: .BLOCK 2
h: .BLOCK 2
b: DECI a, d
LDA a, d
STA a, d
BREQ n
BRGT d
BR b
d: DECI h, d
LDX h, d
BREQ m
BRGT k
BR d
k: ADDA h, d
STA a, d
BR d
m: DECO a, d
n: STOP
.END
