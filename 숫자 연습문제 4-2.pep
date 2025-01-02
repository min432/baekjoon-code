pep/8 연습문제


숫자 0이 입력될 때까지 계속적으로 숫자를 입력받으면서, 모든 수의 절대값을 더해서 출력하는 프로그램을 작성해보자

정답 예시:
BR b
a: .BLOCK 2
f: .BLOCK 2
n: .BLOCK 2
b: DECI a, d
LDA a, d
BREQ x
BRLT c
BR r
c: NEGA
r: DECI a, d
LDX a, d
BREQ x
BRLT h
BR p
h: NEGX
p: STX f, d
ADDA f, d
BR r
x: STA n, d
DECO n, d
STOP
.END

