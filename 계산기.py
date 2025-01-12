def add(x, y):
    return x + y

def subtract(x, y):
    return x - y

def multiply(x, y):
    return x * y

def divide(x, y):
    if y == 0:
        return "오류: 0으로 나눌 수 없습니다."
    return x / y

def main():
    print("사칙연산 계산 프로그램")
    
    while True:
        print("\n사칙연산중 하나를 선택하세요:")
        print("1. 덧셈")
        print("2. 뺄셈")
        print("3. 곱셈")
        print("4. 나눗셈")
        print("5. 종료")
        
        choice = input("선택 (1/2/3/4/5): ")
        
        if choice == '5':
            print("계산 프로그램을  종료합니다.")
            break
        
        # 두 숫자 입력 받기
        try:
            num1 = float(input("첫 번째 숫자를 입력하세요: "))
            num2 = float(input("두 번째 숫자를 입력하세요: "))
        except ValueError:
            print("잘못된 입력입니다. 숫자를 입력하세요.")
            continue
        
        if choice == '1':
            print(f"{num1} + {num2} = {add(num1, num2)}")
        elif choice == '2':
            print(f"{num1} - {num2} = {subtract(num1, num2)}")
        elif choice == '3':
            print(f"{num1} * {num2} = {multiply(num1, num2)}")
        elif choice == '4':
            print(f"{num1} / {num2} = {divide(num1, num2)}")
        else:
            print("잘못된 입력입니다. 1-5 사이의 숫자를 선택하세요.")

if __name__ == "__main__":
    main()
