pep/8 연습문제 (아스키코드 참고하기)

대문자 하나를 입력하면, 해당하는 문자의 소문자를 출력하는 프로그램을 작성해보자.

정답 예시:
BR b
e: .BLOCK 1
a: .BLOCK 1
b: CHARI a, d
LDA e, d
ADDA 0x0020, i
STA e, d
CHARO a, d
STOP
.END