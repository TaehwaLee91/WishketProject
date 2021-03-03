// login
$('#loginbtn2').on('click',function(){
        $('#loginfrm').attr("method","post");
        $('#loginfrm').attr("action","/accounts/login/login");
        $('#loginfrm').submit()
})

$('#userid').on('blur', function(){
    let userid = $('#userid').val().trim();
    let reg = /^[0-9a-zA-Z]{8,50}$/
    if(userid ==' ' || !reg.test(userid)){
        $('#userid').attr('style','border: 1px solid red !important');
        $('#warning2').attr('style','color:red !important');
    }else{
        $('#userid').attr('style','border: 1px solid blue !important');
        $('#warning2').attr('style','display:none');
    }
});

$('#passwd').on('blur', function(){
    let passwd = $('#passwd').val().trim();
    let reg = /^[0-9a-zA-Z]{8,50}$/
    if(passwd ==' ' || !reg.test(passwd)){
        $('#passwd').attr('style','border: 1px solid red !important');
        $('#warning2').attr('style','color:red !important');
    }else{
        $('#passwd').attr('style','border: 1px solid blue !important');
        $('#warning2').attr('style','display:none');
    }
});