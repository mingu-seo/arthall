# arthall
충무아트홀 웹프로젝트 포트폴리오

**초기 설정 

**DATABASE 설정

HeidiSQL
> user: root, password: root1234
> port: 3306, batabase: arthall
> 테이블명
  -admin, member, notice, news, qna, faq, play, reserv
> 테이블 생성 코드

-admin

```
CREATE TABLE `admin` (
	`admin_id` VARCHAR(50) NULL DEFAULT NULL,
	`admin_name` VARCHAR(50) NULL DEFAULT NULL,
	`password` VARCHAR(50) NULL DEFAULT NULL,
	`regdate` DATETIME NULL DEFAULT NULL
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

```
예시)

-테이블명

생성 코드

**ECLIPSE 경로설정   

Eclipse IDE Enterprice for Java Developers   

>src/main/java 

>	>admin 

>	>member 

>	>board   
>	>	>notice   
>	>	>news   
>	>	>qna   
>	>	>faq

>	>play  

>	>reserv   

Controller(경로이름 가이드)      

-@RequestMapping("admin/패키지이름/페이지이름.do")    
ex) 공지사항 리스트 컨트롤러 메서드    
  >@RequestMapping("admin/board/notice/list.do")   

페이지이름.jsp(페이지 이름 가이드)   

  /admin/상위패키지이름/하위패키지이름/페이지이름.jsp   
  ex) 공지사항리스트 페이지   
      >/admin/board/notice/list.jsp   

  WEB-INF/view   
     >/admin   
      >	>  /list.jsp   
       > >/admin   
        >>/member   
        >>/board   
          >>>  /notice   
            >>>/news   
            >>>/qna   
            >>>/faq   
        >>/reserv   


