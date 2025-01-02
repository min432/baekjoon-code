pep/8 연습문제

대문자 ‘A’ ~ ‘Z” 중 한 개의 문자를 입력받아서 소문자로 출력하는 어셈블리어 프로그램을 작성해보자.
단 ,알파벳 ‘A’ ~ ‘Z’ 이외의 문자가 입력되는 경우는 다시 문자를 입력받아서 진행하도록 작성,
‘*’ 문자를 입력할 때까지 이 과정을 계속 반복.

정답 예시:
BR c 
a: .BLOCK 1
b: .BLOCK 1
c: CHARI b, d
LDA a, d
SUBA 0x2A, i
BREQ n
ADDA 0x2A, i
SUBA 0x41, i
BRLT c
ADDA 0x41, i
SUBA 0x5A, i 
BRGT c
ADDA 0x5A, i
ADDA 0x0020, i
STA a, d
CHARO b, d
BR c
n: STOP
.END