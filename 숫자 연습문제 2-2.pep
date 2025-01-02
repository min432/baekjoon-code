pep/8 연습문제


숫자 1개를 입력받고, 이 숫자가 100 이상이면, “greater than or equal to 100”라고 출력하고, 그렇지 않으면 “less than 100”를 출력하는 프로그램을 작성해보자

정답 예시:
BR b
a: .BLOCK 2
ascii1: .ASCII "greater than or equal to 100 \x00"
ascii2: .ASCII "less than 100 \x00"
b: DECI a, d
LDA a, d
SUBA 100, i
BRGE m
STRO ascii2,d
BR n
m: STRO ascii1, d
n: STOP
.END