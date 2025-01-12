def bmical(weight, height):
    heightconvert = height / 100  
    bmioutput = weight / (heightconvert ** 2)
    return bmioutput

def main():
    print("BMI 측정 시작")
    
    weight = float(input("몸무게(kg)를 입력하세요: "))
    height = float(input("키(cm)를 입력하세요: "))
    age = int(input("나이를 입력하세요: "))
    gender = input("성별을 입력하세요 (남/여): ")
    
   
    bmioutput = bmical(weight, height)
    
    print(f"\nBMI: {bmioutput:.2f}")
    
    if bmioutput < 18.5:
        print("저체중")
    elif 18.5 <= bmioutput < 24.9:
        print("정상 체중")
    elif 25 <= bmioutput < 29.9:
        print("과체중")
    else:
        print("비만")

if __name__ == "__main__":
    main()
