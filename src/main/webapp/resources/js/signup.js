// 회원가입 페이지 파트너스 / 클라이언트 선택하는 부분
let img1= document.getElementById('client')
let img2= document.getElementById('parteners')

img1.addEventListener('click',client)
img2.addEventListener('click',parteners)
function client() {
    if(img1.src="/img/signup_1.png")
        img1.src="/img/signup_2.png";
    img2.src="/img/signup_3.png";
}
function parteners() {
    if(img2.src="/img/signup_3.png")
        img2.src="/img/signup_4.png";
    img1.src="/img/signup_1.png";
}
// $('#idText').attr('style') == "color: red !important"
// 폼에 빈값들어가면 경고창 나오게
$('#signbtn1').on('click',function(){
    let msg1 = "사용불가능한이메일 입니다!"
    let msg2 = "사용불가아이디입니다!";
    if($('#email').val()=='' || $('#emailText').attr('style') == "color: red !important") alert("이메일을 확인해주세요");
    else if($('#userid').val()=='' || $('#idText').attr('style') == "color: red !important") alert("아이디를 확인해주세요");
    else if($('#passwd').val()=='' || $('#pwdText').attr('style') == "color: red !important") alert("비밀번호를 확인해주세요");
    else if($('#checkpwd').val()=='') alert("비밀번호를 한번 더 입력해주세요");
    else if($('#checkpwd').val() != $('#passwd').val()) alert("비밀번호가 서로 다릅니다.");
    else if(!$('#agree').is(':checked')) alert("개인정보 및 이용약관에 동의해주세요.");
    else {
        $('#accountfrm').attr("action","/accounts/signup");
        $('#accountfrm').attr("method", "post");
        $('#accountfrm').submit();
    }
});

// signup 페이지 메인 부분의 로그인 버튼
$("#loginbtn2").on('click',function() {location.href="/accounts/login"})


// 이메일 중복체크 +정규표현식
$('#email').on('blur', function(){ checkEmail(); });
$('#email').on('focus', function (){
    $('#emailText').text("비즈니스용 이메일 사용을 권장합니다");
    $('#emailText').attr('style', 'color: red !important');
});
function checkEmail() {
    let email = $('#email').val().trim();
    let reg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    if(email == ' '){
        $('#emailText').text("아이디는 8~16자 이내로 해주세요");
    }

    $.ajax({
        url:"/accounts/signup/checkEmail",type: 'GET',data:{email:$('#email').val()}
    }) // 비동기 요청
        .done(function (data){
            let msg = "사용불가능한 이메일 입니다 !"
            if (data.trim()=="0" && reg.test(email) ){
                msg = "사용가능한 이메일 입니다."
                $('#emailText').attr('style', 'color: blue !important');
            }
            $('#emailText').text(msg);
        })
        .fail(function (xhr, status, error) {
            alert(xhr.status, +"/" + error);
        }); // 비동기 요청 실패시
}

// 아이디 중복체크 + 정규표현식
$('#userid').on('blur', function(){ checkUserid(); });
$('#userid').on('focus', function (){
    $('#idText').text("아이디는 8~16자 이내로 해주세요");
    $('#idText').attr('style', 'color: red !important');
});

function checkUserid() {
    let userid = $('#userid').val();
    let reg = /^[0-9a-zA-Z]{8,16}$/
    if(userid.trim() == ' '){
        $('#idText').text("아이디는 8~16자 이내로 해주세요");
    }

    $.ajax({
        url: '/accounts/signup/checkUserid',
        type: 'GET', data: {userid: $('#userid').val()}
    }) //비동기 요청설정

        .done(function (data) {
            let msg = '사용 불가 아이디 입니다!';
            if (data.trim() == '0' && reg.test(userid)) {
                msg = '사용 가능 아이디 입니다.';
                $('#idText').attr('style', 'color: blue !important');
            }
            $('#idText').text(msg);
        }) // 비동기 요청 성공시

        .fail(function (xhr, status, error) {
            alert(xhr.status, +"/" + error);
        }); // 비동기 요청 실패시
}

// 비밀번호 정규표현식
$('#passwd').on('blur', function(){ checkPwd(); });
$('#passwd').on('focus', function (){
    $('#pwdText').text("비밀번호는 8자 이상 32자 이하로 대/소/숫자/특수문자 각각 한개 이상 입력해 주세요.");
    $('#pwdText').attr('style', 'color: red !important');
});
function checkPwd() {
    let pwd = $('#passwd').val();
    let reg =/(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,32}$/
    if(pwd.trim() == ' ' || reg.test(pwd) != true) {
        $('#pwdText').text("사용 불가 비밀번호 입니다.");
    }else {
        $('#pwdText').text("사용 가능한 비밀번호 입니다.");
        $('#pwdText').attr('style', 'color: blue !important');
    }
}

// 비밀번호 다시쓰기 체크
$('#checkpwd').on('blur', function(){ recheckPwd(); });
$('#checkpwd').on('focus', function (){
    $('#checkpwdText').text("비밀번호를 한번 더 입력해주세요.");
    $('#checkpwdText').attr('style', 'color: red !important');
});

function recheckPwd() {
    if($('#passwd').val() == $('#checkpwd').val()){
        $('#checkpwdText').text("동일한 비밀번호 입니다.");
        $('#checkpwdText').attr('style', 'color: blue !important');
    }else $('#checkpwdText').text("동일한 비밀번호가 아닙니다.");
}
