pep/8 연습문제

숫자 2개를 입력받고, 그 합이 0 이상이면, “greater than or equal to 0”라고 출력하고, 그렇지 않으면 “less than 0”를 출력하는 프로그램을 작성해보자

정답 예시:
BR c
a: .BLOCK 2
b: .BLOCK 2
c: DECI a, d
DECI b, d
LDA a, d
ADDA b, d
BRGE m
STRO ascii2, d
BR v
m: STRO ascii1, d
v: STOP
ascii1: .ASCII "greater than or equal to 0 \x00"
ascii2: .ASCII "less than 0 \x00"
.END