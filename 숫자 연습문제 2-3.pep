pep/8 연습문제

숫자 2개를 입력받고, 그 합이 0 이상이면, “greater than or equal to 0”라고 출력하고, 그렇지 않으면 “less than 0”를 출력하는 프로그램을 작성해보자

정답 예시:                   # 입력받은 두 수를 ADD를 통해 더하고 BR--조건분기문을 통해 0과 비교하자. 그 다음 .ASCII 를 통해
BR c                           저장해두었던 문자열을 STRO를 통해 상황에 맞게 출력하자.
a: .BLOCK 2                  # .ASCII  pseudo instruction 은 STRO 와 함께 쌍으로 자주 쓰인다.
b: .BLOCK 2
c: DECI a, d
DECI b, d
LDA a, d
ADDA b, d
BRGE m
STRO ascii2, d
BR v
m: STRO ascii1, d
v: STOP
ascii1: .ASCII "greater than or equal to 0 \x00"
ascii2: .ASCII "less than 0 \x00"
.END
