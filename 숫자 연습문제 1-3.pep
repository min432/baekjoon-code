pep/8 연습문제

숫자 2개를 입력받고, 그 중 큰 수를 출력하는 프로그램을 작성해보자. (두 숫자가 동일한 경우는 해당 숫자를 출력.)

정답 예시:
BR c
a: .BLOCK 2
b: .BLOCK 2
c: DECI a, d
DECI b, d
LDA a, d
SUBA b, d
BRGE endif
DECO b, d
BR j
endif: DECO a, d
j: STOP
.END
