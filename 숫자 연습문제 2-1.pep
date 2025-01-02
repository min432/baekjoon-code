pep/8 연습문제

숫자 1개를 입력받고, 이 숫자가 0 이상이면, “greater than or equal to 0”라고 출력하고, 그렇지 않으면 “less than 0”를 출력하는 프로그램을 작성해보자

정답 예시:
BR b
a: .BLOCK 2
b: DECI a, d
LDA a, d
BRGE c
STRO ascii2, d
BR v
c: STRO ascii1, d 
v: STOP
ascii1: .ASCII "greater than or equal to 0 \x00"
ascii2: .ASCII "less than 0 \x00"
.END