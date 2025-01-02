pep/8 연습문제


대문자 ‘A’ ~ ‘Z” 중 한 개의 문자를 입력받아서 소문자로 출력하는 기계어 프로그램과 어셈블리어 프로그램을 작성해보자.

대문자 ‘A’ ~ ‘Z” 중 한 문자를 입력받아서(char input)

그 문자를 레지스터로 로드한 후(load)

소문자가 되게 아스키 코드값을 수정하고

그 문자를 메인 메모리에 저장한 후(store)

메모리의 문자를 출력한다.(char out)

예)  A를 입력하면 a를 출력
      B를 입력하면 b를 출력하는 프로그램.



정답 예시:
BR c 
a: .BLOCK 1
b: .BLOCK 1
c: CHARI b, d
LDA a, d
ADDA 0x0020, i
STA a, d
CHARO b, d
STOP
.END