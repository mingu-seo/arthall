# arthall
충무아트홀 웹프로젝트 포트폴리오

## 초기 설정 

## DATABASE 설정

HeidiSQL
> user: root, password: root1234   
> port: 3306, batabase: arthall   
> 테이블명   
  -admin, member, notice, news, qna, faq, play, reserv   
> 테이블 생성 코드   

-admin (07-28 13:26 마지막 수정)

```
CREATE TABLE `admin` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`id` VARCHAR(50) NOT NULL,
	`password` VARCHAR(50) NOT NULL,
	`name` VARCHAR(50) NOT NULL,
	`tel` VARCHAR(50) NULL DEFAULT NULL,
	`email` VARCHAR(50) NULL DEFAULT NULL,
	`birth` VARCHAR(50) NULL DEFAULT NULL,
	`regdate` TIMESTAMP NOT NULL,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=5
;


```
-admin.board (07-28 13:26 마지막 수정)

```
CREATE TABLE `board` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NULL DEFAULT NULL,
	`content` TEXT NULL DEFAULT NULL,
	`regdate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	`moddate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	`readcnt` INT(11) NOT NULL DEFAULT 0,
	`writer` VARCHAR(50) NOT NULL DEFAULT '0',
	`filename` VARCHAR(255) NULL DEFAULT NULL,
	`group_no` INT(11) NOT NULL,
	`order_no` INT(11) NULL DEFAULT 0,
	`depth_no` INT(11) NULL DEFAULT 0,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=98
;


```

-play (#2. 07-27 18시 30분 수정)(#1. 07-26 19시 수정)

```
CREATE TABLE `play` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`playName` VARCHAR(50) NULL DEFAULT NULL,
	`startDate` DATE NULL DEFAULT NULL,
	`endDate` DATE NULL DEFAULT NULL,
	`runtime` INT(11) NULL DEFAULT NULL,
	`hallNo` INT(11) NULL DEFAULT NULL,
	`actor` TEXT NULL DEFAULT NULL,
	`content` TEXT NULL DEFAULT NULL,
	`fileName` VARCHAR(50) NULL DEFAULT NULL,
	`playType` INT(11) NULL DEFAULT NULL,
	`priceA` INT(11) NULL DEFAULT NULL,
	`priceB` INT(11) NULL DEFAULT NULL,
	`priceC` INT(11) NULL DEFAULT NULL,
	`exhPrice` INT(11) NULL DEFAULT NULL,
	`regDate` TIMESTAMP NULL DEFAULT NULL,
	`modDate` TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=22
;

```
-reserv
```
CREATE TABLE `reserv` (
	`no` VARCHAR(50) NOT NULL DEFAULT '\'\'',
	`name` VARCHAR(50) NULL DEFAULT NULL,
	`reservDay` DATE NULL DEFAULT NULL,
	`playNo` INT(11) NULL DEFAULT NULL,
	`playName` VARCHAR(50) NULL DEFAULT NULL,
	`playDay` DATE NULL DEFAULT NULL,
	`runtime` INT(11) NULL DEFAULT NULL,
	`hallNo` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


```
-ticket
```
CREATE TABLE `ticket` (
	`no` VARCHAR(50) NOT NULL DEFAULT '\'\'',
	`reservNo` VARCHAR(50) NOT NULL DEFAULT '\'\'',
	`seatType` VARCHAR(50) NULL DEFAULT NULL COMMENT 'null이면 전시회',
	`price` INT(11) NOT NULL DEFAULT 0,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

```
board/notice 황동민 20200730 filename_org 추가
```


CREATE TABLE `notice` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(50) NULL DEFAULT NULL,
	`filename_org` VARCHAR(50) NULL DEFAULT NULL,
	`regDate` TIMESTAMP NULL DEFAULT NULL,
	`readCnt` INT(11) NULL DEFAULT NULL,
	`writer` VARCHAR(50) NULL DEFAULT NULL,
	`filename` VARCHAR(50) NULL DEFAULT NULL,
	`modDate` TIMESTAMP NULL DEFAULT NULL,
	`content` TEXT NULL DEFAULT NULL,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=81
;


```

board/faq  // 오게이 예아 20200724 임한철
```
CREATE TABLE `faq` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NULL DEFAULT NULL,
	`content` TEXT NULL DEFAULT NULL,
	`regdate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	`moddate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	`readcnt` INT(11) NOT NULL DEFAULT 0,
	`writer` VARCHAR(50) NOT NULL DEFAULT '0',
	`filename` VARCHAR(255) NULL DEFAULT NULL,
	`filename_org` VARCHAR(255) NULL DEFAULT NULL,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;

```
board/news 황동민 20200730 filename_org 추가 
```
CREATE TABLE `news` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(50) NULL DEFAULT NULL,
	`content` TEXT NULL DEFAULT NULL,
	`filename_org` VARCHAR(50) NULL DEFAULT NULL,
	`regDate` TIMESTAMP NULL DEFAULT NULL,
	`readCnt` INT(11) NULL DEFAULT NULL,
	`writer` VARCHAR(50) NULL DEFAULT NULL,
	`filename` VARCHAR(50) NULL DEFAULT NULL,
	`modDate` TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=22
;

```

board/qna   //오게이 예아 이만철 20200727
```
CREATE TABLE `qna` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NULL DEFAULT NULL,
	`content` TEXT NULL DEFAULT NULL,
	`readcnt` INT(11) NOT NULL DEFAULT 0,
	`regdate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	`moddate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	`writer` VARCHAR(50) NOT NULL,
	`filename` VARCHAR(255) NULL DEFAULT NULL,
	`filename_org` VARCHAR(255) NULL DEFAULT NULL,
	`gno` INT(11) NOT NULL DEFAULT 0,
	`ono` INT(11) NOT NULL DEFAULT 0,
	`nested` INT(11) NOT NULL DEFAULT 0,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;
```

-member 200731_수정 김대영/신근영
```
CREATE TABLE `member` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`id` VARCHAR(50) NULL DEFAULT NULL,
	`password` VARCHAR(50) NULL DEFAULT NULL,
	`name` VARCHAR(50) NULL DEFAULT NULL,
	`gender` INT(11) NULL DEFAULT 4 COMMENT '1=남성 / 2=여성 / 3=제3의성  / 4=기재원치않음',
	`tel` VARCHAR(50) NULL DEFAULT NULL,
	`email` VARCHAR(50) NULL DEFAULT NULL,
	`zipCode` VARCHAR(50) NULL DEFAULT NULL,
	`addr1` VARCHAR(100) NULL DEFAULT NULL,
	`addr2` VARCHAR(100) NULL DEFAULT NULL,
	`birth` VARCHAR(50) NULL DEFAULT NULL,
	`joinDate` TIMESTAMP NULL DEFAULT NULL,
	`lastVisit` TIMESTAMP NULL DEFAULT NULL,
	`banMem` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`no`)
)
COMMENT='회원테이블'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=20
;

``` 

예시)

-테이블명

생성 코드

## ECLIPSE 경로설정   

Eclipse IDE Enterprice for Java Developers   

>src/main/java   
>>/admin
>>>/board

>>/member  

>>/board       
>>>/notice      
>>>/news    
>>>/qna   
>>>/faq   

>>/play     
>>/reserv   

### Controller(경로이름 가이드) 

	-@RequestMapping("admin/패키지이름/페이지이름.do")    
	-ex) 공지사항 리스트 컨트롤러 메서드    
	 -@RequestMapping("admin/board/notice/list.do") 

 admin/User   
	
	  >사용자_패키지명+클래스명.java   
	 ex) 관리자/회원 예약 컨트롤러 클래스명 예시   
	  > Ad_ReservController.java
	  > User_ReservController.java


페이지이름.jsp(페이지 이름 가이드)   


	  /admin/상위패키지이름/하위패키지이름/페이지이름.jsp   
	  ex) 공지사항리스트 페이지   
	  /admin/board/notice/list.jsp   

>WEB-INF/view   
>>/admin   


>>>/admin 
>>>>/board 

>>>/member 

>>>/board   
>>>>/notice   
>>>>/news   
>>>>/qna   
>>>>/faq

>>>/play

>>>/reserv   


