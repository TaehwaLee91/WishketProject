$(document).ready(function(){
    var currentPosition = parseInt($(".floatMenu").css("top"));
    $(window).scroll(function() {
        var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
        if(position < 1205){
            $(".floatMenu").stop().animate({"top":position+currentPosition+"px"},500);
        }

    });

});

if($('#hiddenid').val() !="") {
   // function search() {
        var userid =$('#hiddenid').val().toString();
        var pno = $('#hiddenpno').val().toString();
        var result = userid + "/" + pno;

        // alert("==>"+result);

        $.ajax({
            url: "/project/board/checkMember", type: 'GET', data: {result: result}
        }) // 비동기 요청
            .done(function (data) {
                if (data.trim() == "0") {
                    $('#gogo').attr('disabled',false);
                }else if(data.trim() == "1"){
                    $('#gogo').attr('disabled',true);
                    $('#gogo').text("이미 지원한 프로젝트");
                }else{
                    $('#gogo').attr('disabled',true);
                    $('#gogo').text("프로젝트 지원하기");
                }
            })
            .fail(function (xhr, status, error) {
                alert("오류1" + xhr.status, +"-" + error);
            }); // 비동기 요청 실패시
    // }
}else{
    $('#gogo').attr('disabled',true);
}

$('#gogo').on('click', function(){
    var userid = $('#hiddenid').val();
    var pno = $('#hiddenpno').val();
    var result = userid + "/" + pno;


    $.ajax({
        url: "/project/board/insertMember", type: 'GET', data: {result: result}
    }) // 비동기 요청
        .done(function (data) {
            if (data.trim() == "0") {
                alert("프로젝트에 지원하셨습니다.")
                $('#gogo').attr('disabled',true);
                $('#gogo').text("이미 지원한 프로젝트");
            }else{
                alert("프로젝트에 지원하셨습니다.")
            }
        })
        .fail(function (xhr, status, error) {
            alert("오류2" + xhr.status, +"-" + error);
        }); // 비동기 요청 실패시
})