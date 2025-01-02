pep/8 연습문제

숫자 2개를 입력받고, 그 합이 0 미만이면 “less than 0”를 출력하는 프로그램을 작성해보자

정답 예시:
BR input1
block1: .BLOCK 2
block2: .BLOCK 2
ascii: .ASCII "less than 0 \x00"
input1: DECI block1, d
input2: DECI block2, d
LDA block1, d
ADDA block2, d
STA block1, d
BRGE endIF
STRO ascii, d
endIF: STOP
.END