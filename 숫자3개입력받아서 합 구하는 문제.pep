pep/8 연습문제

숫자 3개를 입력받아서 그 합을 출력하는 프로그램을 작성해보자.



정답 예시:
BR d
a: .BLOCK 2
b: .BLOCK 2
c: .BLOCK 2
ascii: .ASCII "program begins: \x00"
d: STRO ascii, d
DECI a, d
DECI b, d
DECI c, d
DECO a, d
CHARO "+", i
DECO b, d
CHARO "+", i
DECO c, d
CHARO "=", i
LDA a, d
ADDA b, d
ADDA c, d
STA a, d
DECO a, d
STOP
.END