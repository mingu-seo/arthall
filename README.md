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

-admin

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
-admin.board

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
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=3
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
board/notice
```


CREATE TABLE `notice` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(50) NULL DEFAULT NULL,
	`regDate` TIMESTAMP NULL DEFAULT NULL,
	`readCnt` INT(11) NULL DEFAULT NULL,
	`writer` VARCHAR(50) NULL DEFAULT NULL,
	`filename` VARCHAR(50) NULL DEFAULT NULL,
	`modDate` VARCHAR(50) NULL DEFAULT NULL,
	`content` TEXT NULL DEFAULT NULL,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=3
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
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;

```
board/news 황동민
```
CREATE TABLE `news` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(50) NULL DEFAULT NULL,
	`content` TEXT NULL DEFAULT NULL,
	`regDate` TIMESTAMP NULL DEFAULT NULL,
	`readCnt` INT(11) NULL DEFAULT NULL,
	`writer` VARCHAR(50) NULL DEFAULT NULL,
	`filename` VARCHAR(50) NULL DEFAULT NULL,
	`modDate` TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
'''

board/qna   //오게이 예아 이만철 20200727
'''
CREATE TABLE `qna` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NULL DEFAULT NULL,
	`content` TEXT NULL DEFAULT NULL,
	`readcnt` INT(11) NOT NULL DEFAULT 0,
	`regdate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	`moddate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	`writer` VARCHAR(50) NOT NULL,
	`filename` VARCHAR(255) NULL DEFAULT NULL,
	`gno` INT(11) NOT NULL DEFAULT 0,
	`ono` INT(11) NOT NULL DEFAULT 0,
	`nested` INT(11) NOT NULL DEFAULT 0,
	PRIMARY KEY (`no`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;
'''

예시)

-테이블명

생성 코드

## ECLIPSE 경로설정   

Eclipse IDE Enterprice for Java Developers   

>src/main/java   
>>/admin    
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
>>>>/list.jsp 

>>>/member 

>>>/board   
>>>>/notice   
>>>>/news   
>>>>/qna   
>>>>/faq

>>>/play

>>>/reserv   


