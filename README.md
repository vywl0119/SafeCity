<br>

# ๐ณ๏ธ Safe City : ์ฐจ๋ ๋ธ๋๋ฐ์ค ์์๋ถ์์ ํตํ ์ค์๊ฐ ํฌํธํ ํ์ง ์์คํ
> 2021.10.04 ~ 2021.11.08  ์ค๋งํธ์ธ์ฌ๊ฐ๋ฐ์ Cracker ์ต์ขํ๋ก์ ํธ<br>
>  *'Safe City'๋ ์ฃผํ์ค ๋ง๋๋ ํฌํธํ์ ์ฐจ๋ ๋ธ๋๋ฐ์ค ์์๋ถ์์ ํตํด ์๋์ ๊ณ ํด ์พ์ ํ๊ณ  ์์ ํ ์ฃผํ์ ํ  ์ ์๊ฒ ๋์์ฃผ๋ AI์๋น์ค์๋๋ค.


## ์กฐ์ ์๊ฐ
- `์ง์ญ์ ๋ต์ฐ์๋ง์ถคํ ๋น๋ฐ์ดํฐ ๋ถ์์๋น์ค ๊ฐ๋ฐ์๊ณผ์  1์ฐจ๋ฐ Cracker`
> ์ ์๋น(์กฐ์ฅ), ๊น์์ง, ๊น์๋ฏผ, ์ง์ฉํ


## ๋ชฉ์ฐจ
[1. ๊ฐ๋ฐ ๋ฐฐ๊ฒฝ ๋ฐ ๋ชฉ์ ](#1-๊ฐ๋ฐ-๋ฐฐ๊ฒฝ-๋ฐ-๋ชฉ์ )

[2. ๊ธฐ๋ฅ](#2-๊ธฐ๋ฅ-๋ฐ-UI/UX)

[3. ์๋น์ค FLOW](#3-์๋น์ค-FLOW)

[4. DB ์ค๊ณ](#4-DB-์ค๊ณ)

[5. ๊ฐ๋ฐ ํ๊ฒฝ](#5-๊ฐ๋ฐ-ํ๊ฒฝ)

[6. ์์ฐ ์์](#6-์์ฐ-์์)


***

## 1. ๊ฐ๋ฐ ๋ฐฐ๊ฒฝ ๋ฐ ๋ชฉ์ 
> ๐ก **'AI๊ธฐ์ ์ ํตํด ์๋์ผ๋ก ํฌํธํ ์ ๊ณ ๋ฅผ ํ๊ณ  ํฌํธํ๋ก ์ธํ ์ฌ๊ณ ๊ฐ ๋ฐ์ํ๊ธฐ ์  ๋น ๋ฅธ๋ณด์๋ฅผ ํตํด ์ฌ๊ณ ๋ฅผ ๋ฐฉ์ง ํ๊ธฐ ์ํด ๊ฐ๋ฐํ๊ฒ ๋์๋ค.'** ์ต๊ทผ ๊ตญ์ง์ฑ ํธ์ฐ๋ก ์ธํด ํฌํธํ์ด ๋ง์ด ์ฆ๊ฐํ๋ ์ถ์ธ์ธ๋ฐ, ํฌํธํ๋ก ์ธํด ์ผ์ด๋๋ ์ฌ๊ณ  ๊ฑด์์ ํผํด๋ณด์์ก์ ํด๋ง๋ค ์ฆ๊ฐํ๊ณ  ์๋ค. ๋ณต์กํ ์ ๊ณ ๋ฐฉ์์ผ๋ก ์ธํด ๋ฐ์ํ๋ ํฌํธํ ์๋ณด๋ค ์ ๊ณ ๋๋ ํฌํธํ์๊ฐ ํ์ ํ ์ ๋ค. ์ฃผํ ์ค ๋ง๋๋ ํฌํธํ์ ์ฐจ๋ ๋ธ๋๋ฐ์ค ์์๋ถ์์ ํตํด ์๋์ ๊ณ  ๋๋ ์๋น์ค๋ฅผ ๊ตฌ์ถํ๋ค๋ฉด ๋น ๋ฅธ ๋ณด์๋ก ์ธํด ์ด์ ์๋ค์ ์พ์ ํ ์ฃผํ์ ๋์์ด ๋๊ณ ์ ํ๋ค.


<br>

- `๊ธฐ์กด ์ ๊ณ  ์์คํ`
    - ์ฒ์ฒ ์ฑ ์ ๊ณ  : ์ฃผํ ์ค ์ฌ์ง์ดฌ์์ ํตํด ์ง์  ์ ๊ณ 
    - ๋ฒ์ค gps ์ค์น ์๋ ์ ๊ณ  : ์ปค๋ธ๋ ๋ฐฉ์งํฑ๋ ํฌํธํ๋ก ์ธ์ ๋ค๋์ ์ค๋ฐ์ดํฐ ๋ฐ์
    - ๊ด๋ฆฌ์ : ์๋ฌด์ค ์ฐจ๋ ์ฃผํ์ ํตํด ํฌํธํ ๋ฐ๊ฒฌ ํ ๋ณด์
 
<br>

- ์์ ๊ฐ์ ์ฌํญ์ **๋ณด์**ํ๊ธฐ ์ํด **Safe City**๋ฅผ ๊ธฐํ

<br>

-`๐ณ๏ธ Safe City`
  - ์ฃผํ๋ง ํด๋ ์๋์ผ๋ก ๋ธ๋๋ฐ์ค ์์๋ถ์์ ํตํด ํฌํธํ ์ ๊ณ 
  - ๊ด๋ฆฌ์๋ค์ด ์ง์  ํฌํธํ ์ฐพ์๋ค๋ ํ์ ์์
  - ๋น ๋ฅธ ๋ณด์๋ก ์ธํด ์ด์ ์๋ค์ ์พ์ ํ ์ฃผํ ๊ฐ๋ฅ
  - ํฌํธํ๋ก ์ธํ ๊ตํต์ฌ๊ณ  ๋ฐ์ ์  ๋ณด์

<br>


<br>

## 2. ๊ธฐ๋ฅ ๋ฐ UI/UX
- `์๋น์ค ์ฃผ์ ๊ธฐ๋ฅ`

<details>
  <summary>๋ฉ์ธ ํ๋ฉด</summary>
   <div markdown="1">       
     <br>
     <img src="https://user-images.githubusercontent.com/43737828/176206016-5b189a74-254b-48c3-a052-3ab015767cb6.PNG" width="740" height="412">
     <br>
   </div>
 </details>

 <details>
    <summary><strong>1) ํ์๊ฐ์/ํ์์ ๋ณด ์์ /๋ก๊ทธ์ธ</strong></summary>
        <div markdown="1">  
            <h3>๐ ํ์๊ฐ์</h3>
            <img src="https://user-images.githubusercontent.com/43737828/176204987-b576f6c7-5201-44ad-b070-bdfe686b865d.PNG" width="740" height="412">
            <h3>๐ ํ์์ ๋ณด ์์ </h3>
            <img src="https://user-images.githubusercontent.com/43737828/176205512-34d05ef1-860d-4a12-b5f9-c35c476469cf.PNG" width="740" height="412">
            <h3>๐ ๋ก๊ทธ์ธ</h3>
            <img src="https://user-images.githubusercontent.com/43737828/176205029-d7c9436e-4ca9-457f-831a-9f2452cc1510.PNG" width="740" height="412">
        </div>
</details>

 <details>
  <summary><strong>2) ์์คํ์๊ฐ ํ์ด์ง </strong></summary>
   <div markdown="1">  
   <br>     
     <img src="https://user-images.githubusercontent.com/43737828/176227092-ac74df96-a637-4efc-abf6-1eaa1a81af34.PNG" width="740" height="412">
     <br>
     <text>โ safe city์ ์์คํ ์๊ฐ๋ฅผ ํ์ธํ  ์ ์๋ค.</text>
   </div>
 </details>
 

 
<details>
  <summary><strong>3) ์ค์๊ฐ ํฌํธํ ํ์ธ ํ์ด์ง</strong></summary>
   <div markdown="1">       
     <br>
     <img src="https://user-images.githubusercontent.com/43737828/176234729-17cbef0f-41ff-4592-91d4-68e06f4accd7.gif" width="740" height="412">
     <br>
     <text>โ ํด๋น ํฌํธํ์ ๋ง์ฐ์ค ์ฌ๋ฆฌ๋ฉด ํฌํธํ ์ฌ์ง ๋ณด์ฌ์ง</text>
       <br>
     <text>โ ์๋, ๊ฒฝ๋ ์๋ ฅ์ ํด๋น ์์น๋ก ์ด๋ ๊ฐ๋ฅ</text>
   </div>
 </details>
 
 <details>
  <summary><strong>4) ์ ๊ณ  ๋ด์ญ ํ์ด์ง </strong></summary>
   <div markdown="1">  
   <br>      
     <img src="https://user-images.githubusercontent.com/43737828/176235084-eac4f30d-2762-4b2d-8c80-ced1a58a6de0.jpg" width="740" height="412">  
     <br>
     <text>โ ์ ๊ณ ํ ํฌํธํ์ ์์น์ ๋ณด์์ฌ๋ถ๋ฅผ ํ์ธํ  ์ ์๋ค</text>
     <br>
     <img src="https://user-images.githubusercontent.com/43737828/176236306-b2949d06-a65e-4c59-b36f-3435dc3c7d08.gif" width="740" height="412">  
     <br>
     <text>โ ๋ณด๋ฌ๊ฐ๊ธฐ ํด๋ฆญ ์ ์ ๊ณ ๋ ํฌํธํ๋ก ์ด๋</text>
   </div>
 </details>
 



<details>
  <summary><strong>5) ๊ณต์ง์ฌํญ ํ์ด์ง</strong></summary>
   <div markdown="1">       
     <br>
     <h3>๐ ๊ณต์ง์ฌํญ</h3>
     <img src="https://user-images.githubusercontent.com/43737828/176235763-6df013c2-1397-4972-bfb7-316f9f118881.PNG" width="740" height="412">
      <h3>๐ ๊ณต์ง์ฌํญ ๊ธ์ฐ๊ธฐ</h3>
     <img src="https://user-images.githubusercontent.com/43737828/176225962-438f109b-5824-4a3a-b5c9-9625052ddd3c.gif" width="740" height="412">
       <br>
     <text>โ ๊ด๋ฆฌ์๋ก ๋ก๊ทธ์ธ ์ ๊ณต์ง์ฌํญ ๊ธ์ฐ๊ธฐ ๊ฐ๋ฅ</text>
      <h3>๐ ๊ณต์ง์ฌํญ ์์ </h3>
     <img src="https://user-images.githubusercontent.com/43737828/176225974-b5be1157-b473-4ddc-bf62-5bf4909c9003.gif" width="740" height="412">
     <br>
     <text>โ ๊ด๋ฆฌ์๋ก ๋ก๊ทธ์ธ ์ ๊ณต์ง์ฌํญ ์์  ๊ฐ๋ฅ</text>
       
   </div>
 </details>
 
 
 <br>


 - `AI ๊ธฐ๋ฅ`
<details>
  <summary><strong> 1) ์ด๋ฏธ์ง ์์ง</strong></summary>
  => crawling์ ํตํด ํฌํธํ ์ด๋ฏธ์ง 1000์ฅ ์์ง
    <br>
  => roboflow ์คํ ๋ฐ์ดํฐ 665์ฅ ์์ง
    <br>
  => kaggle ์คํ ๋ฐ์ดํฐ 643์ฅ ์์ง
</details>

<details>
  <summary><strong> 2) ์ด๋ฏธ์ง ๋ผ๋ฒจ๋ง</strong></summary>
  => roboflow๋ฅผ ํตํด ์ด๋ฏธ์ง ๋ผ๋ฒจ๋ง
</details>

<details>
  <summary><strong> 3) YOLOV5 ๋ชจ๋ธ ๊ตฌ์ถ</strong></summary>
  => crawling๊ณผ roboflow ์คํ๋ฐ์ดํฐ๋ก ํ์ต -> ์ ํ๋ 68%
    <br>
  => ๋ฐ์ดํฐ ์ ์ฒ๋ฆฌ ํ ํ์ต -> ์ ํ๋ 75%
    <br>
  => ์ด๋ฏธ์ง ์ฆ์ -> ์ ํ๋ 86%
</details>

<details>
  <summary><strong> 4) ๋ฅ๋ฌ๋ ์ํ์ฐฉ์ค</strong></summary>
    <h3>๋ฌธ์ ์ </h3>
    <img src="https://user-images.githubusercontent.com/43737828/176242811-f70902fa-dcc6-4538-81ad-d6cb69b854c8.png" width="370" height="206">
    <img src="https://user-images.githubusercontent.com/43737828/176242821-d7635e24-e4c9-4c1e-a944-76f0d93b007c.png" width="370" height="206">
    <br>
    => ํฌํธํ ์ธ์๋ฅ  ์ ์กฐ ๋ฐ ๋๋ก๊ฐ ์๋ ๊ณณ์์ ์ค์ธ์
    <br><br>
    <h3>์์ธ</h3>
    <img src="https://user-images.githubusercontent.com/43737828/176244020-9ffce92d-0e13-4980-93bb-dfd0de1257d3.png" width="370" height="206">
    <img src="https://user-images.githubusercontent.com/43737828/176244036-71665082-38b1-4346-96bf-256ee37c022b.png" width="370" height="206">
    <br>
    => ํ์ต ์ด๋ฏธ์ง์ ๋ธ๋๋ฐ์ค ๊ตฌ๋๊ฐ ๋ค๋ฆ
    <br><br>
    <h3>๊ฐ์ </h3>
    <img src="https://user-images.githubusercontent.com/43737828/176244197-0a872047-6c02-454c-95f8-5355db973df2.png" width="370" height="206">
    <img src="https://user-images.githubusercontent.com/43737828/176244222-e85d5a1f-55b5-4c23-9a70-76d27d367812.png" width="370" height="206">
    <br>
    => kaggle์์ ๋ธ๋๋ฐ์ค ๊ตฌ๋ ์ด๋ฏธ์ง ๋ค์ ์์ง
</details>


<br>

<br>

## 3. ์๋น์ค FLOW
  - `์๋น์ค ํ๋ฆ๋`
 ![SAFECITY์๋น์คํ๋ฆ๋](https://user-images.githubusercontent.com/43737828/176195186-b7861433-3c54-422e-99d1-8a49d20564f4.PNG)

<br>
<br>

  - `์ ์ค์ผ์ด์ค`
![์ ์ค์ผ์ด์ค](https://user-images.githubusercontent.com/43737828/176195226-4ed17a51-e19f-4442-a88f-9d9dfc13cc6c.PNG)

<br>

## 4. DB ์ค๊ณ
  - `ERD`
  
![ER๋คใฃ์ด๊ทธ๋จ](https://user-images.githubusercontent.com/43737828/176195140-620e0c7e-0c99-493e-9f6f-0d3689ed1cad.jpg)

<br>

## 5. ๊ฐ๋ฐ ํ๊ฒฝ

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

## 6. ์์ฐ ์์
https://www.youtube.com/watch?v=XO2qX5c8dBg&t=2s

<br><br><br>
<br><br><br>
###### Readme ํํ๋ฆฟ ์ฐธ๊ณ  : KT AIVLE SCHOOL 1๊ธฐ ์ ๋จ/์ ๋ถ1๋ฐ ์์ง์
