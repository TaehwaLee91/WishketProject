<%@ page pageEncoding="UTF-8" %>
<!-- 메인 -->

<div id="main" class="row bg-light" style="height: auto">
<form name="accountfrm" id="accountfrm"action="signok.jsp" method="post"  class="col-12" style="margin: 0 auto;">
    <div id="intro" class="border col-7 mt-4 bg-white" style="height: 116px; margin:0 auto;">
        <div style="margin:25px 20px">
            <h4 class="font-weight-bold text-dark">회원가입</h4>
            <p class="text-muted">위시켓에 오신 것을 환영합니다.</p>
        </div>
    </div>

    <div id="input" class="card card-body bg-white  col-7 mt-3 row" style="height:780px; margin:50px auto;" >
        <div class="col-7 offset-1 mt-3 " style="display:inline-block;">
            <div class="form-group row">
                <label class="col-form-label col-2 text-right font-weight-bold"><span class="text-danger">*</span>이용목적</label>
                <img src="/img/signup_1.png" id="client">
                <img src="/img/signup_3.png" id="parteners" class="ml-3">
                <small class="text-muted  offset-2 mt-2">선택한 이용목적에 따라 서비스 이용에 차이가 발생합니다</small>
            </div>

            <div class="form-group row ">
                <label for="email" class="col-form-label col-2 text-right font-weight-bold "><span class="text-danger">*</span>이메일</label>
                <input type="text" id="email" name="email"class="form-control col-8">
                <small  id="emailText" name="emailText" class="text-muted  offset-2 mt-2">비즈니스용 이메일 사용을 권장합니다 <i class="bi bi-question-circle bidragup"></i></small>
            </div>

            <div class="form-group row ">
                <label for="userid" class="col-form-label col-2 text-right font-weight-bold "><span class="text-danger">*</span>아이디</label>
                <input type="text" id="userid" name="userid"class="form-control col-8">
                <small id="idText" name="idText"class="text-muted  offset-2 mt-2">아이디는 8~16자 이내로 해주세요.<i class="bi bi-question-circle bidragup"></i></small>
            </div>

            <div class="form-group row">
                <label for="passwd" class="col-form-label col-2 text-right font-weight-bold"><span class="text-danger">*</span>비밀번호</label>
                <input type="password" id="passwd" name="passwd" class="form-control col-8" >
                <small id="pwdText" name="pwdText"class="text-muted  offset-2 mt-2">비밀번호는 대/소/숫자/특수문자 각각 한개 이상을 포함한 8~32글자로 입력해 주세요.<i class="bi bi-question-circle bidragup"></i></small>
            </div>

            <div class="form-group row ">
                <label for="checkpwd" class="col-form-label col-2  font-weight-bold" style="width: 200px"><span class="text-danger">*</span>비밀번호</label>
                <input type="password" id="checkpwd"name="checkpwd" class="form-control col-8">
                <small id="checkpwdText" name="checkpwdText"class="text-muted  offset-2 mt-2">동일한 비밀번호를 입력해 주세요.<i class="bi bi-question-circle bidragup"></i></small>
            </div>

            <div class="form-group row">
                <div class="custom-control custom-checkbox offset-2 col-8">
                    <input type="checkbox" id="agree" class="custom-control-input">
                    <label for="agree" class="text-muted custom-control-label text-dark"><a href="#" class="text-info">이용약관</a> 및 <a href="#" class="text-info">개인정보 처리방침</a>에 동의합니다.</label>
                </div>
            </div>

            <div class="form-group row">
                <form action="signok.jsp" method="post"></form>
                <button type="button" id="signbtn1" class="btn btn-info offset-2 col-8">회원가입</button>
            </div>
        </div>



        <div class=" col-5 border-left mt-3 " style="display:inline-block; padding-bottom:58px">
            <p class="font-weight-bold ml-4">페이스북 계정이 있으신가요?</p>
            <button type="button" class="btn ml-3" style="margin-left:-10px"><img src="/img/login_facebook.png"></button>
            <hr style="position: relative; left:-48px; width: 350px">
            <p class="font-weight-bold ml-3 pt-1 pb-1">이미 회원이신가요 ?</p>
            <div class="button btn border-info text-info col-sm-8 ml-3" id="loginbtn2">로그인</div>
            <hr style="position: relative; left:-48px; width: 350px">
            <p class="small ml-3 pt-3"><span class="font-weight-bold ">71,321</span>개의 클라이언트 기업과<br>
                <span class="font-weight-bold ">86,354</span>개의 개발회사 & 프리랜서가<br>
                <span class="font-weight-bold ">함께하는 온라인 아웃소싱 플랫폼 위시켓</span></p>
            <img src="/img/introduction-img.png" class="w-50 ml-3">
        </div>
    </div>

    <div style="margin-bottom:350px"></div>


</form>
</div><!-- 메인 -->

