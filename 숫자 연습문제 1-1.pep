pep/8 연습문제

숫자 1개를 입력받고, 이 숫자가 0 미만이면, “less than 0”를 출력하는 프로그램을 작성해보자

정답 예시:                                           # 개념: .ASCII "문자열 \X00" -> \X00 앞의 문자열까지를 
BR c                                                        문자 하나하나 메모리에 저장. 나중에 차례대로 출력가능
a: .BLOCK 2                                          # BR--분기가 0 기준이므로 잘 이용해보자                                         
b: .ASCII "less than 0 \x00" 
c: DECI a, d 
LDA a, d
BRGE e
STRO b, d
e: STOP
.END
