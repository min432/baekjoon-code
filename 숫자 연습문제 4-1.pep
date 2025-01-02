pep/8 연습문제

숫자 2개를 입력받아서, 큰 값을 출력하는 프로그램을 작성해보자. (두 값이 동일한 경우는 해당 값을 출력)

ex) 입력이 1 5인 경우 5를 출력
     입력이 3 3인 경우 3을 출력

정답 예시:
BR c
a: .BLOCK 2
b: .BLOCK 2
c: DECI a, d
DECI b, d
LDA a, d
SUBA b, d
BRLT x
BREQ y
DECO a, d
BR k
x: DECO b, d
BR k
y: DECO a, d
k: STOP
.END