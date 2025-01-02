pep/8 연습문제

숫자를 하나씩 입력받으면서, 숫자 0이 입력되면 프로그램 동작을 멈추는 프로그램. 입력된 모든 숫자들의 합을 마지막에 출력하는 프로그램
이 프로그램을 작성해보자

정답 예시:
BR b
a: .BLOCK 2
c: .BLOCK 2
b: DECI a, d
LDA a, d
BREQ n
while: DECI c, d
LDX c, d
BREQ n
ADDA c, d
STA a, d
BR while
n: DECO a, d
STOP
.END