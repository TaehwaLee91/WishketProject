<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header class="row">
    <nav class="nav navbar-expand navbar-dark bg-dark col-12" >
        <ul class="nav navbar-nav  nav-fill w-100  col-9   " style="margin:15px auto;">
            <li class="nav-item small font-weight-bold"><a class="nav-link navbar-brand text-white" href="/index">WishKet</a></li>
            <li class="nav-item small font-weight-bold align-self-center"><a class="nav-link text-white" href="#">프로젝트 등록</a></li>
            <li class="nav-item small font-weight-bold align-self-center"><a  class="nav-link text-white "href="#">프로젝트 찾기</a></li>
            <li class="nav-item small font-weight-bold align-self-center"><a class="nav-link text-white" href="#">파트너스 찾기</a></li>
            <li class="nav-item small font-weight-bold align-self-center"><a class="nav-link text-white" href="#">이용방법</a></li>
            <li class="nav-item small font-weight-bold align-self-center"><a class="nav-link text-white" href="#">이용후기</a></li>
            <span class="mt-2 text-white text-muted">|</span>
            <li class="nav-item small font-weight-bold align-self-center"><a class="nav-link text-white" href="#">스토어</a></li>
            <li class="nav-item align-self-center" style="padding-left: 200px">
                <c:if test="${empty UID}">
                <button type="button" class="btn btn-sm btn-light " id="loginbtn1">로그인</button>&nbsp&nbsp
                <button type="button" class="btn btn-sm btn-info " id="joinbtn">회원가입</button></li>
                </c:if>
                <c:if test="${not empty UID}">
                    <div class="dropdown" >
                        <span class="text-white font-weight-bold" style="font-size:13px">${UID}님 어서오세요&nbsp;&nbsp;</span>
                        <img src="/img/default_avatar_c.png" style="width:32px; height: 32px; border-radius:70%; position:relative; bottom:1px" class="dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" id="logout" href="/accounts/logout">로그아웃</a>
                        </div>
                    </div>
                </c:if>
        </ul>
    </nav>
</header><!-- 헤더+네비 -->
