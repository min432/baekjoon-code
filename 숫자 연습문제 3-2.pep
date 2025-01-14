pep/8 연습문제

숫자를 하나씩 입력받으면서, 숫자 0이 입력되면 프로그램 동작을 멈추는 프로그램. 입력된 모든 숫자들의 합을 마지막에 출력하는 프로그램을 작성해보자

정답 예시:
BR b                        #심볼은 임의로 작성(여기서는 a,b,c,n, while 을 씀). 심볼 안써도 상관 x >> 메모리 위치를 하나하나 기억하기는 힘드니까 심볼을 쓰는 연습을 하자
a: .BLOCK 2                 # while 문 구조와 분기를 잘 이용해보자
c: .BLOCK 2                 (개념) .block n  , deci, ldr , str , br-- 조건 분기문
b: DECI a, d
LDA a, d
BREQ n
while: DECI c, d
LDX c, d
BREQ n
ADDA c, d
STA a, d
BR while
n: DECO a, d
STOP
.END
