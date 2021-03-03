<%@ page pageEncoding="UTF-8" %>
<!-- 메인 -->
<div id="main" class="row bg-light" style="height: 680px">

    <div id="intro" class="border col-7 mt-4 bg-white" style="height: 116px; margin:0 auto;">
        <div style="margin:25px 20px">
            <h4 class="font-weight-bold text-dark">로그인</h4>
            <p class="text-muted">위시켓에 오신 것을 환영합니다.</p>
        </div>
    </div>

    <div id="input" class="card card-body bg-white  col-7 border mt-3 row" style="height: 308px; margin:320px auto;" >
        <div class="col-7 offset-1 mt-3 " style="display:inline-block;">
            <div class="form-group row ">
                <label for="userid" class="col-form-label col-4 text-right font-weight-bold "><span class="text-danger">*</span>아이디 또는 이메일</label>
                <input type="text" id="userid" name="userid" class="form-control col-6">
            </div>
            <div class="form-group row">
                <label for="passwd" class="col-form-label col-4 text-right font-weight-bold"><span class="text-danger">*</span>비밀번호</label>
                <input type="password" id="passwd" name="passwd"  class="form-control col-6 " >
            </div>
            <div class="form-group row">
                <div class="custom-control custom-checkbox offset-4 col-6">
                    <input type="checkbox" id="keep" class="custom-control-input">
                    <label for="keep" class="text-muted custom-control-label text-dark">로그인상태 유지</label>
                </div>
            </div>
            <div class="form-group row">
                <button type="button" id="loginbtn2" class="btn btn-info offset-4 col-6">로그인</button>
                <small class="text-muted offset-3 col-7 mt-2  pl-5">비밀번호를 잊으셨나요? <a href="#" class="font-weight-bold text-info">비밀번호 찾기</a></small>
            </div>
        </div>

        <div class="col-4 border-left mt-3" style="display:inline-block; padding-bottom:58px">
            <p class="font-weight-bold">이미 페이스북으로 가입하셨다면</p>
            <button type="button" class="btn" style="margin-left:-10px"><img src="/img/login_facebook.png"></button>
            <hr style="border-style: dashed; width: 280px; margin-left: -5px">
            <p>아직 회원이 아니신가요? <a  href="#" class="font-weight-bold text-info">회원가입하기</a></p>
        </div>
    </div>


</div><!-- 메인 -->