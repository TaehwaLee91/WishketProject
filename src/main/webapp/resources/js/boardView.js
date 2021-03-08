$(document).ready(function(){
    var currentPosition = parseInt($(".floatMenu").css("top"));
    $(window).scroll(function() {
        var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
        if(position < 1205){
            $(".floatMenu").stop().animate({"top":position+currentPosition+"px"},500);
        }

    });
});