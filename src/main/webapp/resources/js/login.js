
// 로그인하기
$('#loginbtn2').on('click',function(){
    if($('#userid').val()=='')alert('아이디를 입력하세요!');
    else if($('#passwd').val()=='')alert('비밀번호를 입력하세요 !');
    else {
        $('#loginfrm').attr("method","post");
        $('#loginfrm').attr("action","/accounts/login/login");
        $('#loginfrm').submit()
    }
})