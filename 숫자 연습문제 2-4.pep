pep/8 연습문제

숫자 2개를 입력받고, 첫번째 숫자가 더 크면, "첫번째 숫자 is greater than 두번째 숫자" 라고 출력하고, 두번째 숫자가 더 크면, “첫번째 숫자 is smaller than 두번째 숫자”를 출력하는 프로그램을 작성해보자
(두 수가 동일한 경우는 아무 메시지를 출력하지 않음).
ex) 2 5를 입력 시, “2 is smaller than 5”를 출력

정답 예시:                        #두 수를 비교부터 해야겠네요? >> 앞에서 말했던 '차를 이용해서 조건분기문을 통해 0과 비교하는 방식'
BR c                              # pep/8 에서 여러줄에 걸쳐 출력코드를 작성 하더라도 줄바꿈이 아니면 
a: .BLOCK 2                          batch/terminal 에서 한줄로 이어서 출력됨 >>  2 5를 입력 시, “2 is smaller than 5”를 출력             
b: .BLOCK 2                           이거를 어떻게 해야되나 고민 했을 수있는데 이제 어떻게 해결할지 감이 오나요?
ascii1: .ASCII " is greater than \x00"
ascii2: .ASCII " is smaller than \x00"
c: DECI a, d
DECI b, d
LDA a, d
SUBA b, d
BRGT l
BREQ m
DECO a, d
STRO ascii2, d
DECO b, d
BR m
l: DECO a, d
STRO ascii1, d
DECO b, d
m: STOP
.END
