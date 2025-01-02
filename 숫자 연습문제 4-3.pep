pep/8 연습문제

숫자 2개를 입력받아서, 그 숫자들의 곱을 출력하는 프로그램을 작성해보자. (입력 숫자는 음수가 아닌 경우만 고려함.)

정답 예시:
BR c
a: .BLOCK 2
b: .BLOCK 2
k: .BLOCK 2
ascii .ASCII "number must be greater than 0 or equal to 0 \x00"
c: DECI a, d
LDA a, d
BRLT j
DECI b, d
LDX b, d
BRLT j
STX k, d
ADDA k, d

j: STRO ascii, d
STOP
.END