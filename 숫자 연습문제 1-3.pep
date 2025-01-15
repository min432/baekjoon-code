pep/8 연습문제

숫자 2개를 입력받고, 그 중 큰 수를 출력하는 프로그램을 작성해보자. (두 숫자가 동일한 경우는 해당 숫자를 출력.)

정답 예시:                     #숫자 두개를 입력받아서 둘이 비교를 해야하는데 어떻게 하면 될까
BR c                            >> 수학에서 두 수를 비교할때 차가 0보다 큰지 작은지 생각하지 않았나?
a: .BLOCK 2                     >> SUB으로 입력받은 두 수의 차를 구한뒤 BR--조건분기문을 통해 0과 비교해보자               
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
