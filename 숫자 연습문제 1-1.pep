pep/8 연습문제

숫자 1개를 입력받고, 이 숫자가 0 미만이면, “less than 0”를 출력하는 프로그램을 작성해보자

정답 예시:
BR c
a: .BLOCK 2
b: .ASCII "less than 0 \x00"
c: DECI a, d 
LDA a, d
BRGE e
STRO b, d
e: STOP
.END