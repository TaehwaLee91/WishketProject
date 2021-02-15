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
$('#signbtn1').on('click',function(){
    if($('#email').val()=='') alert("이메일을 입력해주세요");
    else if($('#userid').val()=='') alert("아이디를 입력해주세요");
    else if($('#passwd').val()=='') alert("비밀번호를 입력해주세요");
    else if($('#checkpwd').val()=='') alert("비밀번호를 한번 더 입력해주세요");
    else if($('#checkpwd').val() != $('#passwd').val()) alert("비밀번호가 서로 다릅니다.");
    else if(!$('#agree').is(':checked')) alert("개인정보 및 이용약관에 동의해주세요.");
    else {
        $('#accountfrm').attr("action","/accounts/signup");
        $('#accountfrm').attr("method", "post");
        $('#accountfrm').submit();
    }
});