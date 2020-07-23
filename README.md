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
	`adminNo` INT(11) NOT NULL AUTO_INCREMENT,
	`id` VARCHAR(50) NOT NULL,
	`password` VARCHAR(50) NOT NULL,
	`name` VARCHAR(50) NOT NULL,
	`tel` VARCHAR(50) NULL DEFAULT NULL,
	`email` VARCHAR(50) NULL DEFAULT NULL,
	`birth` TIMESTAMP NULL DEFAULT NULL,
	`regdate` TIMESTAMP NOT NULL DEFAULT  ON UPDATE NOW(),
	PRIMARY KEY (`adminNo`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=5
;


```
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

 admin/member

	 사용자_패키지명+클래스명.java   
	 ex) 관리자/회원 예약 컨트롤러 클래스명 예시   
	 Ad_ReservController.java
	 Mem_ReservController.java


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


