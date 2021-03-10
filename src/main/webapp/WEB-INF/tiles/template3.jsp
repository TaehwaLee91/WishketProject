
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty UID}">
    <c:redirect url="/accounts/login"/>
</c:if>

<!doctype html>
<html class="no-js modern" lang="ko">
<head>
    <meta charset="utf-8"><meta content="593258114025512" property="fb:app_id">
    <title>Title</title>
    <!--<link href="/resources/css/style.css" rel="stylesheet"> &lt;!&ndash; 웹페이지 전판적인 틀 &ndash;&gt;-->
    <!-- 코드 순서에 따라 레이아웃 모양이 바뀌어서 실패-->
    <link href="/css/all.min.css" rel="stylesheet">  <!--폰트 스타일 시트 -->
    <link href="/css/main.css" rel="stylesheet">     <!-- 기본 레이아웃 페이지 레이아웃이랑 같이 넣어야 제대로 동작한다-->
    <link href="/css/page.css" rel="stylesheet">     <!-- 위에 설명 되어있음-->
    <link href="/css/component.css" rel="stylesheet">
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <link href="/css/jquery-ui.min.js" rel="stylesheet">

</head>
<body class="mywishket">
<div class>

    <tiles:insertAttribute name="header3"/>
    <a class="advertisement active" id="partner_message_advertisement" href="https://www.wishket.com/wk_ad/W3pLFXluqI" style="background-image:url('/img/resume.png'); background-repeat: no-repeat"> </a>
    <!-- 빨간 줄 뜨지만 이상없음 신경쓰지마세요 -->
    <tiles:insertAttribute name="gaia"/>
    <div class="footer-margin-remover"></div>
    <tiles:insertAttribute name="footer2"/>
</div>
</body>

</html> 