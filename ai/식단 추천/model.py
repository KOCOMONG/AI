import pandas as pd
import joblib
import numpy as np

class Diet:
    def __init__(self):
        '''
        __init__() : 초기화 함수
                    필요한 모델,라벨 불러오기
        '''

        self.model = joblib.load('다이어트.pkl')
        self.label=pd.read_csv('음식라벨인코더.csv')
       
    def input(self):
        '''
            include() : 입력값 세팅
        '''
        print("키 / 몸무게 / 나이 / 성별(0:남 1:여) / 목표체중 / 목표기간 / 평소 활동량 (1~5) ")
        
        self.h,self.w,self.a,self.s,self.w_w,self.w_t,self.p=map(int,input().split())

       

    def rec(self):
        
        self.input()

        m_w=self.w-self.w_w
        cal=m_w*7200
        m_cal=round(cal/self.w_t,2)

        print(m_cal)

        '''
        목표체중 : w_w
        목표기간 : w_t
        일 목표소모 열량 : m_cal
        '''
        #비만도 측정
        ob = round(self.w/((self.h/100)*(self.h/100)),1)

        #비만도 분류

        if ob < 18.5:
            ca_ob = "저체중"
        elif ob < 23:
            ca_ob = "정상체중"
        elif ob < 25:
            ca_ob = "비만 전 단계 (과체중)"
        elif ob < 30:
            ca_ob = "1단계 비만"
        elif ob < 35:
            ca_ob = "2단계 비만"
        else:
            ca_ob = "3단계 비만 (고도비만)" 

        print(ca_ob)

        #기초대사량 측정

        if self.s==0: #남
            BMR = 66.47 + (13.75 * self.w) + (5 * self.h) - (6.76 * self.a)
        else: #여
            BMR = 655.1 + (9.56 * self.w) + (1.85 * self.h) - (4.68 * self.a)
            BMR = round(BMR,1)

        #운동
        p_dcal=round(m_cal*0.5,2)

        #식사
        f_dcal=round(m_cal*0.5,2)

        #하루 필요 열량
        if self.p==1:
            d_cal = BMR * 1.2
        elif self.p==2:
            d_cal = BMR * 1.375
        elif self.p==3:
            d_cal = BMR * 1.55
        elif self.p==4:
            d_cal = BMR * 1.725
        else:
            d_cal = BMR * 1.9

        '''
        _ 님이 w_t일간 m_w kg을 줄이기 위해서는
        매일 운동으로 p_dcal kcal 를 소모해야하고,
        식사는 하루 ( d_cal - f_dcal ) kcal 를 드시면 됩니다.
        '''
        #하루 칼로리 
        today_cal=(d_cal - f_dcal)*0.4
        
        self.cal = today_cal
        self.tan = today_cal*0.5
        self.dan = today_cal*0.2
        self.ji = today_cal*0.3
    
        test={
            '열량(kcal)': self.cal,
            '탄수화물(kcal)': self.tan,
            '단백질(kcal)': self.dan,
            '지방(kcal)': self.ji
        }

        test=pd.DataFrame([test])
        
        print(test.iloc[0])

        y=self.model.predict(test.iloc[0])

        self.result = self.label['음식'][np.where(self.label['label'] == y[0])[0][0]]

        print(self.result)

if __name__ == "__main__":
    Dietrec=Diet()
    Dietrec.rec()
