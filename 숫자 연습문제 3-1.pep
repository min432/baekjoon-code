pep/8 연습문제

숫자를 하나씩 입력받으면서, 입력받은 숫자를 화면에 동일하게 출력하고, 숫자 0이 입력되면 프로그램 동작을 멈추는 프로그램을 작성해보자


정답 예시:
BR b
a: .BLOCK 2
b: DECI a, d
while: LDA a, d
CPA 0, i
BREQ j
DECO a, d
DECI a, d
BR while
j: STOP
.END