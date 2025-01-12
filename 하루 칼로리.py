def calorieoutcal(move, time):
    caloriemove = {
        "걷기": 200,    
        "달리기": 600,  
        "자전거 타기": 400,  
        "수영": 500     
    }
    
    if move in caloriemove:
        return caloriemove[move] * time
    else:
        return 0

def main():
    print("하루 동안의 칼로리 측정 프로그램")

    try:
        
        eatcalorie = float(input("오늘 하루 동안 섭취한 칼로리는 얼마인가요? (단위: 칼로리): "))
        
        print("오늘 운동한 종류를 입력하세요 (여러 개 선택 가능, 각 운동은 쉼표로 구분):")
        print("예시: 걷기, 달리기, 자전거 타기, 수영")
        activities = input("운동 종류: ").strip().split(",")
        activities = [move.strip() for move in activities]  
        
        allgonecalorie = 0
        for move in activities:
            time = float(input(f"{move} 운동 시간은 몇 시간인가요?: "))
            allgonecalorie += calorieoutcal(move, time)

        caloriesub = eatcalorie - allgonecalorie
        print(f"\n오늘 섭취한 칼로리: {eatcalorie} kcal")
        print(f"운동으로 소모된 칼로리: {allgonecalorie} kcal")
        print(f"최종적으로 남은 칼로리: {caloriesub} kcal")
        
        if caloriesub > 0:
            print("오늘 하루는 체중 증가가 예상됩니다.")
        elif caloriesub < 0:
            print("오늘 하루는 체중 감소가 예상됩니다.")
        else:
            print("오늘은 체중이 유지됩니다.")

    except ValueError:
        print("잘못된 입력입니다. 숫자와 운동 종류를 정확히 입력해 주세요.")

if __name__ == "__main__":
    main()
