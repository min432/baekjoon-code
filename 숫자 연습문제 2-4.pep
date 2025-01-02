pep/8 연습문제

숫자 2개를 입력받고, 첫번째 숫자가 더 크면, "첫번째 숫자 is greater than 두번째 숫자" 라고 출력하고, 두번째 숫자가 더 크면, “첫번째 숫자 is smaller than 두번째 숫자”를 출력하는 프로그램을 작성해보자
(두 수가 동일한 경우는 아무 메시지를 출력하지 않음).
ex) 2 5를 입력 시, “2 is smaller than 5”를 출력

정답 예시:
BR c
a: .BLOCK 2
b: .BLOCK 2
ascii1: .ASCII " is greater than \x00"
ascii2: .ASCII " is smaller than \x00"
c: DECI a, d
DECI b, d
LDA a, d
SUBA b, d
BRGT l
BREQ m
DECO a, d
STRO ascii2, d
DECO b, d
BR m
l: DECO a, d
STRO ascii1, d
DECO b, d
m: STOP
.END