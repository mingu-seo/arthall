<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>�湫��Ʈ���� | ����&middot;�̽�</title>
    <link rel="icon" sizes="16x16" type="image.png" href="<%=request.getContextPath()%>/img/favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/news.css">
    <script src="<%=request.getContextPath()%>/js/forEachPolyfill.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/header.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/topBtn.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/footerSiteOpen.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/pagenation.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/notice.js" defer></script>
</head>

<body>
    <div id="wrap">
        <a href="#main" id="gomain">�����ٷΰ���</a>
        <header>
            <div class="header-inner cf">
                <h1><a href="<%=request.getContextPath()%>/"><span class="hidden">logo</span><img src="<%=request.getContextPath()%>/img/logo.png" alt="logo"></a>
                </h1>

                <div class="mobile">
                    <a href="javascript:;" class="mobile__openBtn"><i class="far fa-newspaper"></i></a>
                    <div class="right_nav">
                        <ul class="tnb cf">
                            <li><a href="<%=request.getContextPath()%>/member/loginForm.do">�α���</a></li>
                            <li><a href="<%=request.getContextPath()%>/member/joinForm.do">ȸ������</a></li>
                          <!--   <li><a href="./mypage.html">����������</a></li> -->
                        </ul>
                        <nav class="gnb">
                            <ul class="cf">
                                <li class="hover">
                                    <a href="#"><span>�湫��Ʈ���� �Ұ�</span></a>
                                    <ul>
                                        <li><a href="#">��� �� ��ܼҰ�</a></li>
                                        <li><a href="#">�¼���ġ��</a></li>
                                        <li><a href="#">�����ȳ�</a></li>
                                        <li><a href="#">���ô±�</a></li>
                                        <li><a href="#">���ǽü�</a></li>
                                        <li><a href="#">�����ü�</a></li>
                                    </ul>
                                </li>
                                <li class="hover">
                                    <a href="calendar.html"><span>���������á����</span></a>
                                    <ul>
                                        <li><a href="calendar.html">Ķ����</a></li>
                                        <li><a href="perf_info.html">��������</a></li>
                                        <li><a href="exhi_info.html">��������</a></li>
                                        <li><a href="event_info.html">�������</a></li>
                                    </ul>
                                </li>
                                <li class="hover">
                                    <a href="<%=request.getContextPath()%>/board/notice/index.do"><span>�������ҽ�</span></a>
                                    <ul>
                                        <li><a href="<%=request.getContextPath()%>/board/notice/index.do">��������</a></li>
                                        <li><a href="<%=request.getContextPath()%>/board/news/news.do">����/�̽�</a></li>
                                    </ul>
                                </li>
                                <li class="hover">
                                    <a href="rentalGuidance.html"><span>����ȳ�</span></a>
                                    <ul>
                                        <li><a href="rentalGuidance.html">�������</a></li>
                                        <li><a href="rentalPlace.html">����ü�</a></li>
                                        <li><a href="rentalApply.html">�����û</a></li>
                                    </ul>
                                </li>
                                <li class="hover">
                                    <a href="<%=request.getContextPath()%>/board/faq/index.do"><span>������</span></a>
                                    <ul>
                                  		<li><a href="<%=request.getContextPath()%>/board/faq/index.do">�����ϴ� ����</a></li>
                                        <li><a href="<%=request.getContextPath()%>/board/qna/index.do">1:1 ����</a></li>
                                        <li><a href="etiquette.html">��������</a></li>
                                        <li><a href="benefits.html">ȸ������</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <form class="search" action="action_page.php">
                        <input type="search" name="search" class="t_box" placeholder="�˻�� �Է����ּ���">
                        <button type="submit" class="submit"><i class="fa fa-search"></i></button>
                    </form>
                    <a href="javascript:;" class="mobile__closeBtn"><i class="fas fa-times fa-3x"></i></a>
                </div>
            </div>
        </header>

        <div class="sub__tit">
            <h2>����&middot;�̽�</h2>
        </div>
        <div class="sub__container cf">
            <aside class="container__subClass">
                <h3 class="subClass__tit"><i class="far fa-newspaper"></i><br>����&middot;�ҽ�</h3>
                <nav class="subClass__list">
                    <ul>
                        <li><a href="<%=request.getContextPath()%>/board/notice/index.do">��������</a></li>
                        <li><a href="<%=request.getContextPath()%>/board/news/news.do">����&middot;�̽�</a></li>
                    </ul>
                </nav>
            </aside>
            <main id="main">
                <div class="main__content">
                    <section class="content__innerConts">
                        <h3 class="innerConts__tit">����&middot;�̽�</h3>
                        <p>�湫��Ʈ���� ȸ�� �����Ͻø� �湫��Ʈ���� ���� &amp; �̽��� ���Ϸ� �޾ƺ��� �� �ֽ��ϴ�.</p>
                        <div class="innerConts__cont">
                            <div class="cont__noticeContainer">
                                <table class="noticeContainer__notice notice">
                                    <thead>
                                        <tr>
                                            <th class="numTit">��ȣ</th>
                                            <th class="titTit">����</th>
                                            <th class="dateTit">�ۼ���</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:if test="${vo.totalCount == 0}">
									<tbody>
									<tr align="center" bgcolor="white">
								
										<td colspan="100%">�Խñ��� �����ϴ�.</td>
									</tr>
									</tbody>
									</c:if>
                                    
                                    <c:if test="${vo.totalCount > 0}">
                                    <c:forEach var="notice" items="${list}">
                                        <tr>
                                            <td class="notice__num"><c:out value="${notice.no}"/></td>
                                            <td class="notice__tit">
                                            <a href="news_view.html">
                                            	<c:out value="${notice.title}"/>
                                            </a></td>
                                            <td class="notice__date">${notice.regDate}</td>
                                        </tr>
                                    </c:forEach>
                                    </c:if>
                          
                                     
                                    </tbody>
                                </table>
                                <!-- <a href="notice_submit.html" class="writeBtn"><i class="fas fa-edit"></i>�����ϱ�</a> -->
                                <div class="pagenation">
                                	<c:if test="${vo.startPage > 5}">
                                    <a href="javascript:;" class="pageBtn doublePrevBtn"><i class="fas fa-angle-double-left"></i></a>
                                    <a href="javascript:;" class="pageBtn prevBtn"><i class="fas fa-angle-left"></i></a>
                               		</c:if>
                               		<c:forEach var="pNo" begin="${vo.startPage}"
									end="${vo.endPage}">
									<a href="index.do?page=${pNo}&stype=${vo.stype}&sval=${vo.sval}">${pNo}</a>
									</c:forEach>
                               		
                               		<c:if test="${vo.endPage < vo.totalPage}">
                                    <a href="javascript:;" class="pageBtn nextBtn"><i class="fas fa-angle-right"></i></a>
                                    <a href="javascript:;" class="pageBtn doubleNextBtn"><i class="fas fa-angle-double-right"></i></a>
                                	</c:if>
                                </div>
                                <form class="search_notice" action="index.do" method="post">
                                	<div>
                                
                                    <button type="submit" class="submit"><i class="fa fa-search"></i></button>
                                   <!--  <input type="text" name="search_nt" class="search_nt" placeholder="�˻�� �Է����ּ���"> -->
                                   <input type="text" name="sval" value="${vo.sval}" placeholder="�˻�� �Է����ּ���">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </section>
                </div>
            </main>
            <a href="javascript:;" class="topBtn">TOP</a>
        </div>
        <footer>
            <div class="footerinner">
                <div class="footerinner__top cf">
                    <h2><a href="index.html"><img src="<%=request.getContextPath()%>/img/logo.png" alt="�ΰ�"></a></h2>
                    <div class="top__links">
                        <div class="links__sns cf">
                            <a href="https://ko-kr.facebook.com/chungmuartscenter/" target="_blank"><i class="fab fa-facebook-f fa-2x"></i></a>
                            <a href="https://twitter.com/chungmuholic" target="_blank"><i class="fab fa-twitter fa-2x"></i></a>
                            <a href="https://www.instagram.com/chungmu2016/" target="_blank"><i class="fab fa-instagram fa-2x"></i></a>
                            <a href="https://blog.naver.com/cmah_arthall" target="_blank"><i class="xi-naver xi-2x"></i></a>
                            <a href="https://www.youtube.com/channel/UC4UWAAwSsT4O3hcLjFL8kXQ" target="_blank"><i class="fab fa-youtube fa-2x"></i></a>
                        </div>
                        <ul class="links__list cf">
                            <li><a href="#">�̿���</a></li>
                            <li><a href="#">������������</a></li>
                            <li><a href="#">�̸��ϼ����ź�</a></li>
                            <li><a href="#">����������޹�ħ</a></li>
                            <li><a href="#">����Ʈ��</a></li>
                            <li>
                                <select name="siteBox" id="siteBox">
                                    <option value="">���û���Ʈ �ٷΰ���</option>
                                    <option value="http://www.beautifulmindcharity.org/">��ƼǮ���ε�</option>
                                    <option value="http://www.chimff.com/2019/">�湫�� ������ ��ȭ��</option>
                                    <option value="https://www.e-junggulib.or.kr/SJGL/">�����߱� ���� ���ڵ�����</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="footerinner__bottom cf">
                    <div class="bottom__left">
                        <address>
                            ����ڵ�Ϲ�ȣ : 201-82-06405 <br>
                            ����ǸŹ�ȣ : ��2008-�����߱�-1218ȣ <br>
                            �ּ� : ����� �߱� ���� 387(���ε� 131)
                        </address>
                        <p>COPY &copy; CHUNGMU ARTS CENTER</p>
                    </div>
                    <div class="bottom__right">
                        <a href="tel:02-2230-6600">02.2230.6600</a>
                        <p>
                            ���ð� : ��~�� 09:30~18:30 <br>
                            ���ɽð� : 12:00~13:00 <br>
                            �ָ� �� ������ �޹�
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</body></html>
