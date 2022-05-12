import tensorflow as tf
import tensorflow.keras as keras
from keras.models import load_model
from tensorflow.keras.preprocessing.text import Tokenizer
from tensorflow.keras.preprocessing.sequence import pad_sequences
from hanspell import spell_checker
import numpy as numpy
import re
import pandas as pd
!pip install transformers
!pip install konlpy
from transformers import FunnelTokenizerFast, FunnelModel
from konlpy.tag import Okt
import pickle


class disease_diagnose:
    def __init__(self):
        '''
        __init__() : 초기화 함수
                    필요한 모델 불러오기
        '''
        with open('men_model_v2_2.h5', 'rb') as handle:
          self.m_loaded_model = pickle.load(handle)
        with open('women_model_v2_2.pickle', 'rb') as handle:
          self.w_loaded_model = pickle.load(handle)
        
        with open('men_tokenizer_v2_2.pickle', 'rb') as handle:
          self.m_tokenizer = pickle.load(handle)
        with open('women_tokenizer_v2_2.pickle', 'rb') as handle:
          self.w_tokenizer = pickle.load(handle)

        with open("men_diseases_v2_2.txt", "rb") as fp:
          self.m_disease_codes = pickle.load(fp)
        with open("women_diseases_v2_2.txt", "rb") as fp:
          self.w_disease_codes = pickle.load(fp)
            

    def input(self,height,weight,age,sex,cheifcomplaint,onset,location,duration,course,experience,character,factor,associated,event,drug,social,family,traumatic,past,feminity,obesity):
        '''
        기초문진 및 진단 내용
        남녀 모델 분리
        '''

        self.data_dic={}

        self.data_dic['height']= height
        self.data_dic['weight'] = weight
        self.data_dic['age'] = age
        self.data_dic['sex'] = sex
        self.data_dic['cheifcomplaint'] = cheifcomplaint
        self.data_dic['onset'] = onset
        self.data_dic['location'] = location
        self.data_dic['duration'] = duration
        self.data_dic['course'] = course
        self.data_dic['experience'] = experience
        self.data_dic['character'] = character
        self.data_dic['factor'] = factor
        self.data_dic['associated'] = associated
        self.data_dic['event'] = event
        self.data_dic['drug'] = drug
        self.data_dic['social'] = social
        self.data_dic['family'] = family
        self.data_dic['traumatic'] = traumatic
        self.data_dic['past'] = past
        self.data_dic['feminity'] = feminity
        self.data_dic['obesity'] = obesity

        #데이터프레임 변환
        self.input_data = pd.DataFrame([self.data_dic])        

        #남,녀 모델 분리
        if self.data_dic['sex'].values =='여자':
          self.model = self.w_loaded_model
          self.tokenizer = self.w_tokenizer
          self.disease_codes = self.w_disease_codes
          self.max_len=176
        else:
          self.model = self.m_loaded_model 
          self.tokenizer = self.m_tokenizer 
          self.disease_codes = self.m_disease_codes   
          self.max_len=176 
        


    def preprocess(self):
        '''
        데이터 전처리 
            1. 불용어 제거
            2. Nan값 처리
            3. NRS -> text
            4. 스펠링 체크
            5. 비만도 정의
            6. 문자 변환
            7. 문장 생성
            8. 토크나이저 생성
        '''
        
        self.data = self.input_data

        #1. 불용어 제거
        def erase_stopwords(text):
            stopwords = ['질문', '문의', '관련', '그대로', '계속', '답변', '선생님', '관련문의',
                      '한지', '자주', '좀', '쪽', '자꾸', '요즘', '몇개', '무조건', '하나요',
                      '안해', '경우', '최근', '및', '몇', '달', '일반', '전날', '저번',
                      '말', '일어나지', '며칠', '먹기', '지난번', '글', '때문', '너', '무',
                      '시', '잔', '뒤', '지속', '막', '것', '이건', '뭔가', '다시', '그',
                      '무슨', '안', '난', '기', '후', '거리', '뭘', '저', '뭐', '답젼',
                      '평생', '회복', '반', '감사', '의사', '보험', '학생', '제발', '살짝',
                      '느낌', '제', '대해','문제', '전','정도', '왜', '거', '가요',
                      '의심', '추천', '를', '지금', '무엇', '관해', '리', '세',
                      '로', '목적', '그냥', '거의', '고민', '다음', '이틀', '항상', '뭐', '때',
                      '요',  '이후', '혹시', '안녕하세요',
                      '안녕','선생','끼','일','식','첨부','말씀','이번','분','년','진단','밥',
                      '속','년','동안','코딩','바','평소','게','주','올해','월','외','소견','오후','병원',
                      '어머니','군데','여러분','전문가','건','아버지','주일','센티','동안','건가요',
                      '의견','건강','세일','결까요','학원','수업','밤','부모','적','가족','대학생',
                      '무언가','이게','무엇','포함','살','사진','제','가능','중','기재','아이',
                      '저녁','안심','걱정','씨','며칠','동네','어디','하루','동생','해외','얘',
                      '학년','사람','직장인','나이','키','몸무게','엄마','부탁','해석','혹','시가'
                      '의', '가', '이', '은', '들', '는', '잘', '걍', '과', '도', '을'
                      '를', '으로', '자', '에', '와', '하다', '다', '.', ',']
            temp_x = Okt.morphs(text, stem=True)
            temp_x = [word for word in temp_x if not word in stopwords]
            temp_x = re.findall(r'\w+', str(temp_x))
            temp_x = ' '.join(map(str, temp_x))
            
            return ' '.join(re.findall(r'\w+', str(temp_x)))

        #2. Nan값 처리
        def to_nan(x):
            if(x == '-'):
                x = ''
            elif(x == '아니오'):
                x = ''
            elif(x == '아뇨'):
                x = ''
            elif(x == '몰라요'):
                x = ''
            elif(x == '모릅니다'):
                x = ''
            elif(x == '모름'):
                x = ''
            elif(x == '아뇨'):
                x = ''
            elif(x == '없습니다'):
                x = ''
            elif(x == '없어요'):
                x = ''
            elif(x == '없음'):
                x = ''
            elif(x == '.'):
                x = ''    
            return x
        
        #3. NRS -> text
        def NRS_to_text(text):

            a = re.findall('NRS.*?점', text) #NRS 5점
            if len(a) == 0:
                a = re.findall('NRS.*?\d~\d', text) #NRS 4~6 / NRS : 4~6
            if len(a) == 0:
                a = re.findall('NRS.*?\d', text) #NRS: 5
              
            try:
                t = re.findall('[0-9]+', a[0])

                if (len(t) == 2):
                  score = (int(t[0])+int(t[1]))/ 2
                else:
                  score = int(t[0])

                if score >= 7:
                  to_text = '심함'
                elif score >= 4:
                  to_text = '중간'
                else:
                  to_text = '약함'

                text = text.replace(a[0], to_text)
              
            except:
                pass

            return text

        #4. 스펠링 체크
        def spelling_check(text):
            #print(text)
            result = spell_checker.check(text) 
            return result.as_dict()['checked'] 

        #5. 비만도 정의
        def define_obesity(x):
            if x < 0:
                return '알 수 없음'
            elif x < 20.0:
                return '저체중'
            elif x <= 24.0:
                return '정상'
            elif x <= 29.0:
                return '과체중'
            else:
                return '비만'

        #6. 문자 변환
        def only_letters_num(x):
            return ' '.join(re.findall(r'\w+', str(x)))

        # Handle Nan values 
        data = self.data.fillna('-')

        for i in range(len(data.columns)):
            data[data.columns[i]] = data.apply(lambda x : to_nan(x[data.columns[i]]) , axis = 1 )

        # Define obesity by calculating BMI with Height and Weight
        self.data_dic['height'] = self.data_dic['height'].replace('', '0')
        self.data_dic['height'] = self.data_dic['height'].replace('', '0')

        self.data_dic['height'] = self.data_dic['height'].astype('int')
        self.data_dic['height'] = self.data_dic['height'].astype('int')

        self.data_dic['BMI'] = self.data_dic['weight']/ (self.data_dic['height']/100)**2
        self.data_dic['BMI'].fillna(-1, inplace=True)
        self.data_dic['BMI'] = define_obesity(self.data_dic['BMI'].values)
            
              
        # Change Age to Groups of AgeX(-> Since we are going to receive their age as a group_format)
        self.data_dic['age'] = self.data_dic['age'].astype(str)

        #7. 문장 생성
        self.data_dic['All'] = (self.data_dic['cheifcomplaint'].values +'. '+ self.data_dic['age'].values + '. '+
                              self.data_dic['onset'].values + '. '+ self.data_dic['location'].values + '. ' +
                              self.data_dic['sex'].values + '. '+
                              self.data_dic['duration'].values + '. ' + self.data_dic['course'].values + '. ' +
                              self.data_dic['experience'].values + '. ' + self.data_dic['character'].values + '. ' +
                              self.data_dic['associated'].values+'. '+ self.data_dic['factor'].values + '. ' +
                              self.data_dic['event'].values + '. ' + self.data_dic['drug'].values + '. ' +
                              self.data_dic['social'] .values + '. ' + self.data_dic['family'] .values + '. ' +
                              self.data_dic['traumatic'].values + '. ' + self.data_dic['past'].values + '. ' +
                              self.data_dic['feminity'].values + '. ' + self.data_dic['obesiyy'].values)
        
        # Change NRS to text
        self.data_dic['All'] = NRS_to_text(self.data_dic['All'].values[0])

        # Spelling Check
        self.data_dic['All'] = spelling_check(self.data_dic['All'].values[0])

        # Erase stopwords using konlpy
        self.data_dic['All'] = erase_stopwords(self.data_dic['All'].values[0])

        data['All'] = only_letters_num(self.data_dic['All'].values)
        document_bert_data = ["[CLS] " + str(s) + " [SEP]" for s in self.data_dic['All'].values]

        #8. 토크나이저 생성
        tokenizer_funnel = FunnelTokenizerFast.from_pretrained("kykim/funnel-kor-base")
        
        ko_tokenized_texts_data = [tokenizer_funnel.tokenize(s) for s in document_bert_data]
        data_sequence = self.tokenizer.texts_to_sequences(ko_tokenized_texts_data)
        data_sequence = pad_sequences(data_sequence, maxlen = self.max_len).reshape(1,-1)
        
        
        return data_sequence

    
    def get_result(self,y_prob):
        '''
        결과 출력 (Top 3)
        진단명, 동의어, 질료과 질병설명 (str)
        '''
        
        top_k_result = tf.math.top_k(y_prob, k=3, sorted=True)
        first = top_k_result[1][0][0], top_k_result.values.numpy()[0][0]
        second = top_k_result[1][0][1], top_k_result.values.numpy()[0][1]
        third = top_k_result[1][0][2], top_k_result.values.numpy()[0][2]

        first_pred_disease_name = self.disease_codes[first[0]]
        second_pred_disease_name = self.disease_codes[second[0]]
        third_pred_disease_name = self.disease_codes[third[0]]

        def load_disease_list():
            List_of_Disease = pd.read_csv('Disease_info.csv')
            return List_of_Disease

        ## 질병 목록 ##
        LOD = load_disease_list()

        first_info = LOD[LOD['원 질병이름'] == first_pred_disease_name]
        result1 = {
                  '진단명:',first_pred_disease_name, round(first[1]*100, 2),'%','\n',
                  '동의어:', first_info['동의어'].values[0]+'\n',
                  '진료과: ', first_info['진료과'].values[0]+'\n',
                  '질병 설명:', first_info['정의'].values[0]
            }
        second_info = LOD[LOD['원 질병이름'] == second_pred_disease_name]
        result2 = {
                  '진단명:', second_pred_disease_name, round(second[1]*100, 2),'%','\n',
                  '동의어:', second_info['동의어'].values[0]+'\n',
                  '진료과: ', second_info['진료과'].values[0]+'\n',
                  '질병 설명:', second_info['정의'].values[0]
            }
        third_info = LOD[LOD['원 질병이름'] == third_pred_disease_name]
        result3 = {
                  '진단명:', third_pred_disease_name, round(third[1]*100, 2),'%','\n',
                  '동의어:', third_info['동의어'].values[0]+'\n',
                  '진료과: ', third_info['진료과'].values[0]+'\n',
                  '질병 설명:', third_info['정의'].values[0]
            }
            
        return result1, result2, result3

    def model(self):
        '''
        모델예측
        self.result = 결과
        '''

        data_sequence = self.preprocess(self.input_data)
        y_prob = self.model.predict(data_sequence)

        self.result = self.get_result(y_prob)

