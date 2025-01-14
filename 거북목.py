def turtleneck(angle):
    if angle < 15:
        return "정상, 괜찮은 상태."
    elif 15 <= angle < 30:
        return "가벼운 거북목, 목이 약간 앞으로 나옴."
    elif 30 <= angle < 45:
        return "중간 거북목, 목이 많이 앞으로 나옴."
    else:
        return "심한 거북목, 목이 심하게 앞으로 나옴."

def main():
    print("거북목 판별 프로그램")
    
    try:
        angle = float(input("목이 어깨보다 몇 도 정도 앞으로 나왔습니까? (도 단위로 입력): "))
    except ValueError:
        print("숫자를 입력해주세요.")
        return
    
    output = turtleneck(angle)
    print(output)

if __name__ == "__main__":
    main()
