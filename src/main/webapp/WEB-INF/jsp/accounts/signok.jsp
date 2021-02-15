<%@ page pageEncoding="UTF-8" %>

<!-- 메인 -->
<div id="main" class="row bg-light" style="height: 680px">

    <div id="intro" class="border col-7 mt-4 bg-white" style="height: 116px; margin:0 auto;">
        <div style="margin:25px 20px">
            <h4 class="font-weight-bold text-dark">회원가입 요청 완료</h4>
            <p class="text-muted">위시켓 이용을 위해서는 인증 메일 확인이 필요합니다.</p>
        </div>
    </div>

    <div id="signok" class="card card-body bg-white  col-7 mt-3" style="height: 400px; margin:320px auto;" >
        <div class="form-group row mt-4">
            <div class="offset-1 col-7 ">
                <p >${userid}님 <br>
                    가입하신 이메일 주소 <br>
                    <span style="font-weight: bold">${email}</span>로 인증메일 보내드렸습니다.<br>
                    이메일 인증 한 후에 정상적인 서비스 이용이 가능합니다.<br><br>
                    혹시 인증메일을 못받으셨나요 ?
                </p>
                <button class="btn btn-info">인증메일 다시 받기</button>
            </div>
            <div class="col-4">
                <img src="/img/accounts_signup_complete.png">
            </div>
        </div>

        <div class="form-group row ">
            <div class="offset-1 col-10 offset-1">
                <hr>
                <img src="https://www.wishket.com/static/img/process-guide-success.png" style="display: inline-block; margin-bottom: 28px; margin-right: 3px">
                <p style="display: inline-block">
                    1. 7일 이내에 이메일의 인증 링크를 클릭해 주시면 가입이 승인됩니다.<br>
                    2. 인증 메일이 스팸함으로 가는 경우도 있으니 확인해 주세요.
                </p>
            </div>
        </div>

    </div>



</div><!-- 메인 -->
