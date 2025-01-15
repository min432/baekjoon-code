pep/8 연습문제

숫자 1개를 입력받고, 이 숫자가 0 이상이면, “greater than or equal to 0”라고 출력하고, 그렇지 않으면 “less than 0”를 출력하는 프로그램을 작성해보자

정답 예시:                        # 입력받은 숫자를 BR-- 조건기문을 통해 0과 비교하고 .ASCII 를 통해 저장해놨던 문자열을 상황에 맞게
BR b                               출력하자
a: .BLOCK 2                      # 앞에서도 말했던 .ASCII 가 또 나왔다. 자주 쓰이는 중요한 pseudo instruction 이므로 꼭 기억해두자
b: DECI a, d
LDA a, d
BRGE c
STRO ascii2, d
BR v
c: STRO ascii1, d 
v: STOP
ascii1: .ASCII "greater than or equal to 0 \x00"
ascii2: .ASCII "less than 0 \x00"
.END
