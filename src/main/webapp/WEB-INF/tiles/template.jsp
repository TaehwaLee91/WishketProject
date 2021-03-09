<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%  response.setHeader("Pragma","no-cache");
    response.setDateHeader("Expires",0);
    response.setHeader("Cache-Control", "no-cache");  %>
<%-- http cache contorl 관련 코드 --%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


 
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="/css/index.css">
        <link rel="stylesheet" href="/css/boardView.css">

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Wishket Project</title>
    <style>
        .container-fluid { width: 1903px;
            max-width: none; !important;}
    </style>
</head>
<body>
  
  
  <div class="container-fluid bg-light">
    <tiles:insertAttribute name="header"/>
    <tiles:insertAttribute name="main"/>
    <tiles:insertAttribute name="footer"/>
  </div>
  <!-- 로그인 모달 -->
<%--            <tiles:insertAttribute name="modal"/>--%>
        


        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="/js/bootstrap.bundle.min.js"></script>
        <script src="/js/signup.js"></script>
        <script src="/js/index.js"></script>
        <script src="/js/login.js"></script>
        <script src="/js/boardView.js"></script>
        <script>$('#loginbtn1').on('click',function(){location.href='/accounts/login'})
        $('#joinbtn').on('click',function(){location.href='/accounts/signup'})</script>

    </body>

</html>