<br>

# 🕳️ Safe City : 차량 블랙박스 영상분석을 통한 실시간 포트홀 탐지 시스템
> 2021.10.04 ~ 2021.11.08  스마트인재개발원 Cracker 최종프로젝트<br>
>  *'Safe City'는 주행중 만나는 포트홀을 차량 블랙박스 영상분석을 통해 자동신고해 쾌적하고 안전한 주행을 할 수 있게 도와주는 AI서비스입니다.


## 조원 소개
- `지역전략산업맞춤형 빅데이터 분석서비스 개발자과정 1차반 Cracker`
> 정수빈(조장), 김원지, 김영민, 진용환


## 목차
[1. 개발 배경 및 목적](#1-개발-배경-및-목적)

[2. 기능](#2-기능-및-UI/UX)

[3. 서비스 FLOW](#3-서비스-FLOW)

[4. 3 Tier Architecture](#4-3-Tier-Architecture)

[5. DB 설계](#5-DB-설계)

[6. 개발 환경](#6-개발-환경)

[7. 유저 가이드](#7-유저-)

***

## 1. 개발 배경 및 목적
> 💡 **'AI기술을 통해 자동으로 포트홀 신고를 하고 포트홀로 인한 사고가 발생하기 전 빠른보수를 통해 사고를 방지 하기 위해 개발하게 되었다.'** 최근 국지성 호우로 인해 포트홀이 많이 증가하는 추세인데, 포트홀로 인해 일어나는 사고 건수와 피해보상액은 해마다 증가하고 있다. 복잡한 신고방식으로 인해 발생하는 포트홀 수보다 신고되는 포트홀수가 현저히 적다. 주행 중 만나는 포트홀을 차량 블랙박스 영상분석을 통해 자동신고 되는 서비스를 구축한다면 빠른 보수로 인해 운전자들의 쾌적한 주행에 도움이 되고자 한다.


<br>

- `기존 신고 시스템`
    - 척척 앱 신고 : 주행 중 사진촬영을 통해 직접 신고
    - 버스 gps 설치 자동 신고 : 커브나 방지턱도 포트홀로 인식 다량의 오데이터 발생
    - 관리자 : 업무중 차량 주행을 통해 포트홀 발견 후 보수
 
<br>

- 위와 같은 사항을 **보완**하기 위해 **Safe City**를 기획

<br>

-`🕳️ Safe City`
  - 주행만 해도 자동으로 블랙박스 영상분석을 통해 포트홀 신고
  - 관리자들이 직접 포트홀 찾아다닐 필요 없음
  - 빠른 보수로 인해 운전자들은 쾌적한 주행 가능
  - 포트홀로 인한 교통사고 발생 전 보수

<br>


<br>

## 2. 기능 및 UI/UX
- `서비스 주요 기능`

<details>
  <summary>메인 화면</summary>
   <div markdown="1">       
     <br>
     <img src="https://user-images.githubusercontent.com/43737828/176206016-5b189a74-254b-48c3-a052-3ab015767cb6.PNG" width="900" height="412">
     <br>
   </div>
 </details>

 <details>
    <summary><strong>1) 회원가입/회원정보 수정/로그인</strong></summary>
        <div markdown="1">  
            <h3>📝 회원가입</h3>
            <img src="https://user-images.githubusercontent.com/43737828/176204987-b576f6c7-5201-44ad-b070-bdfe686b865d.PNG" width="900" height="412">
            <h3>📝 회원정보 수정</h3>
            <img src="https://user-images.githubusercontent.com/43737828/176205512-34d05ef1-860d-4a12-b5f9-c35c476469cf.PNG" width="900" height="412">
            <h3>🔒 로그인</h3>
            <img src="https://user-images.githubusercontent.com/43737828/176205029-d7c9436e-4ca9-457f-831a-9f2452cc1510.PNG" width="900" height="412">
        </div>
</details>
 
 <details>
  <summary><strong>2) 시스템소개 페이지</strong></summary>
   <div markdown="1"> 
    <br>  

     <img src="https://user-images.githubusercontent.com/43737828/176227092-ac74df96-a637-4efc-abf6-1eaa1a81af34.PNG" width="700" height="412">
     <br>
  
   </div>
 </details>
 
 <details>
  <summary><strong>3) 실시간 포트홀 확인 페이지</strong></summary>
   <div markdown="1">
     <br>      

     <img src="https://user-images.githubusercontent.com/37900424/167589023-d790e269-ddb8-499e-b900-0c6114a619b9.png" width="900" height="412">
       
    ![KakaoTalk_20220629_003925295_01](https://user-images.githubusercontent.com/43737828/176222214-da90c4a1-40ed-4051-a5b9-f2d254b2301a.gif)

       
     <br>
      <text>⇒ 해당 포트홀에 마우스 올리면 포트홀 사진 보여짐</text>
      <text>⇒ 위도, 경도 입력해서 원하는 위치로 이동 가능</text>
   </div>
 </details>
 
 <details>
  <summary><strong>4) 신고 내역 페이지 </strong></summary>
   <div markdown="1">  
   <br>     
     <img src="https://user-images.githubusercontent.com/37900424/167589301-13a71d5b-9388-480b-bca0-68a7a83e73fc.png" width="700" height="412">
     <br>
     <text>⇒ 신고한 포트홀의 위치와 보수여부를 확인할 수 있다</text>
   </div>
 </details>
 
  <details>
    <summary><strong>5) 공지사항 페이지</strong></summary>
        <div markdown="1">  
              
            ![KakaoTalk_20220629_005613785](https://user-images.githubusercontent.com/43737828/176225962-438f109b-5824-4a3a-b5c9-9625052ddd3c.gif)

            ![KakaoTalk_20220629_005613785_01](https://user-images.githubusercontent.com/43737828/176225974-b5be1157-b473-4ddc-bf62-5bf4909c9003.gif)

      
            <h3>📝 공지사항</h3>
            <img src="https://user-images.githubusercontent.com/43737828/176225910-f72b8b8b-18b0-4288-a80a-453844080d81.PNG" width="900" height="412">
            <h3>📝 공지사항 글쓰기</h3>
            <img src="https://user-images.githubusercontent.com/43737828/176205512-34d05ef1-860d-4a12-b5f9-c35c476469cf.PNG" width="900" height="412">
            <h3>📝 공지사항 수정</h3>
            <img src="https://user-images.githubusercontent.com/43737828/176205029-d7c9436e-4ca9-457f-831a-9f2452cc1510.PNG" width="900" height="412">
        </div>
</details>


 
 
 <br>


 - `AI 기능`

<strong>1) crawling을 통해 이미지 수집</strong>
<br>
<strong>2) roboflow를 통해 이미지 라벨링</strong>
<br>
<strong>3) YOLO V5포트홀 모델 구축</strong>


<br>

<br>

## 3. 서비스 FLOW
  - `서비스 흐름도`
 ![SAFECITY서비스흐름도](https://user-images.githubusercontent.com/43737828/176195186-b7861433-3c54-422e-99d1-8a49d20564f4.PNG)

<br>
<br>

  - `유스케이스`
![유스케이스](https://user-images.githubusercontent.com/43737828/176195226-4ed17a51-e19f-4442-a88f-9d9dfc13cc6c.PNG)

<br>

## 4. DB 설계
  - `ERD`
  
![ER다ㅣ어그램](https://user-images.githubusercontent.com/43737828/176195140-620e0c7e-0c99-493e-9f6f-0d3689ed1cad.jpg)

<br>

## 5. 개발 환경

- `Front-End`

  |HTML|CSS|JS|Bootstrap|
  |:---:|:---:|:---:|:---:|
  |![html](https://user-images.githubusercontent.com/68097036/151471705-99458ff8-186c-435b-ac5c-f348fd836e40.png)|![css](https://user-images.githubusercontent.com/68097036/151471805-14e89a94-59e8-468f-8192-c10746b93896.png)|![js](https://user-images.githubusercontent.com/68097036/151471854-e0134a79-b7ef-4a0f-99fd-53e8ee5baf50.png)|![bootstrap](https://user-images.githubusercontent.com/68097036/151480381-2b23a8af-c6b4-43a6-96a6-ea69e0b953e0.png)|



- `Back-End`

  |JAVA|Spring|MySQL|
  |:---:|:---:|:---:|
  |<img src="https://user-images.githubusercontent.com/43737828/176196626-e47ddb01-aa86-451b-8491-2a54d7172102.png" width="200" height="130">|<img src="https://user-images.githubusercontent.com/43737828/176196688-5bc53f22-6fbe-4cf4-968a-f2b7166f6a1d.png" width="200" height="130">|<img src="https://user-images.githubusercontent.com/68097036/151466853-2b56fd0f-3aa9-424e-b17b-1c7cd991ffbf.png" width="200" height="130">|


- `Etc`

  |zoom|GitHub|
  |:---:|:---:|
  |<img src="https://user-images.githubusercontent.com/43737828/176196699-d0d30c28-5ce3-4bd1-8632-7d9be4c2a6d4.png" width="200" height="130">|<img src="https://user-images.githubusercontent.com/68097036/151467910-0fda00cd-c08b-4869-a21e-a66d1d133ff5.png" width="200" height="130">|

<br>

<br>


<br><br><br>
<br><br><br>
###### Readme 템플릿 참고 : 전남/전북1반 안지예
