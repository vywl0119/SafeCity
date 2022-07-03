CREATE TABLE MEMBERS
(
    `mb_id`          VARCHAR(30)    NOT NULL    COMMENT '회원 아이디', 
    `mb_pw`         VARCHAR(30)    NOT NULL    COMMENT '회원 비밀번호', 
    `mb_name`        VARCHAR(30)    NOT NULL    COMMENT '회원이름', 
    `mb_phone`       VARCHAR(30)    NOT NULL    COMMENT '핸드폰번호', 
    `serial_number`  VARCHAR(30)    NOT NULL    COMMENT '블랙박스번호', 
    `admin_yn`       VARCHAR(30)    NOT NULL    COMMENT '관리자여부', 
    `pt_cnt`         INT            NOT NULL    DEFAULT 0 COMMENT '신고횟수', 
     PRIMARY KEY (mb_id)
);

ALTER TABLE MEMBERS COMMENT '회원 정보';


CREATE TABLE POTHOLE
(
    `pt_seq`        INT UNSIGNED       NOT NULL    AUTO_INCREMENT COMMENT '포트 홀 순번', 
    `pt_latitude`   DECIMAL(17, 14)    NOT NULL    COMMENT '포트 홀 위도', 
    `pt_longitude`  DECIMAL(17, 14)    NOT NULL    COMMENT '포트 홀 경도', 
    `mb_id`         VARCHAR(30)        NOT NULL    COMMENT '회원 아이디', 
    `pt_pic`       VARCHAR(150)       NOT NULL    COMMENT '포트 홀 사진', 
    `pt_video`       VARCHAR(150)       NOT NULL    COMMENT '포트 홀 동영상', 
    `pt_date`       timestamp         NOT NULL    DEFAULT current_timestamp COMMENT '신고날짜', 
    `pt_yn`         VARCHAR(30)        NOT NULL    DEFAULT 'N' COMMENT '보수여부', 
     PRIMARY KEY (pt_seq)
);

ALTER TABLE POTHOLE COMMENT '포트 홀 정보';

ALTER TABLE POTHOLE
    ADD CONSTRAINT FK_POTHOLE_mb_id_MEMBERS_mb_id FOREIGN KEY (mb_id)
        REFERENCES MEMBERS (mb_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

         
        
drop table pothole

SELECT * FROM POTHOLE
select * from pothole order by pt_seq desc limit 1

CREATE TABLE NOTICE
(
    `nt_seq`      INT UNSIGNED     NOT NULL    AUTO_INCREMENT COMMENT '공지사항번호', 
    `mb_id`       VARCHAR(30)      NOT NULL    COMMENT '회원 아이디', 
    `nt_title`    VARCHAR(150)     NOT NULL    COMMENT '제목', 
    `nt_content`  VARCHAR(2000)    NOT NULL    COMMENT '내용', 
    `nt_cnt`      INT              NOT NULL    DEFAULT 0 COMMENT '조회수', 
    `nt_date`     timestamp         NOT NULL    DEFAULT current_timestamp COMMENT '작성날짜', 
     PRIMARY KEY (nt_seq)
);

ALTER TABLE NOTICE
    ADD CONSTRAINT FK_NOTICE_mb_id_MEMBERS_mb_id FOREIGN KEY (mb_id)
        REFERENCES MEMBERS (mb_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
        

update pothole set pt_yn = 'N' where mb_id = 'chichi'

insert pothole(pt_latitude, pt_longitude, mb_id, pt_pic, pt_date) value('35.115452','126.897754','chichi','resources/images/ph.jpg','2021-10-11');
insert pothole(pt_latitude, pt_longitude, mb_id, pt_pic, pt_date) value('35.114148','126.897473','chichi','resources/images/pothole.jpg','2021-10-11');
insert pothole(pt_latitude, pt_longitude, mb_id, pt_pic, pt_date) value('35.113199','126.896816','chichi','resources/images/ph2.jpg','2021-10-11');
insert pothole(pt_latitude, pt_longitude, mb_id, pt_pic, pt_date) value('35.111590','126.896448','chichi','resources/images/ph3.jpg','2021-10-11');
insert pothole(pt_latitude, pt_longitude, mb_id, pt_pic, pt_date) value('35.111590','126.896448','chichi','resources\exp24\view_img\pothole\4.jpg','2021-10-11');
insert pothole(pt_latitude, pt_longitude, mb_id, pt_pic, pt_date) value('35.111590','126.896448','chichi','resources\exp24\view_img\pothole\4.jpg','2021-10-11');

drop table pothole
select pt_video from pothole order by pt_seq desc limit 1
CREATE TABLE TESTIMG
(
    `test`      varchar(150)     NOT NULL   
);



select * from members

select * from pothole



delete from pothole


CREATE TABLE VIDEO
(
	`v_seq`      INT UNSIGNED     NOT NULL    AUTO_INCREMENT COMMENT '비디오 번호', 
    `video`    VARCHAR(200)     NOT NULL    COMMENT '비디오 경로',
    PRIMARY KEY (v_seq)
   
);


drop table video


update members set pt_cnt = 0 where mb_id = 'kisame'

update NOTICE set nt_cnt = 41 where nt_seq = 1
update NOTICE set nt_cnt = 12 where nt_seq = 2;
update NOTICE set nt_cnt = 57 where nt_seq = 3;
update NOTICE set nt_cnt = 33 where nt_seq = 4;


select * from notice


