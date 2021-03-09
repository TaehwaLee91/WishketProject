var page = 1;
var r_list = $('.review_list_list');
var left = $('.leftmove');
var right = $('.rightmove');

left.on('click', function() {
    var $this = $(this);
    if ($this.hasClass('active')) {
        $this.removeClass('active');
    } else {
        $('.review_move').removeClass('active');
        $this.addClass('active');
    }
});

left.on('click', function() {
    if (!left.hasClass('disable')) {
        left.addClass('disable');
        page--;
        r_list.css("left", "-" + 465 * page + "px");
        if (page <= 0) {
            page = 7-2;
            setTimeout(function () {
                r_list.removeClass('animated');
                r_list.css("left", "-" + 465 * page + "px");
                setTimeout(function () {
                    r_list.addClass('animated');
                }, 20);
            }, 500);
        }
        setTimeout(function () {
            left.removeClass('disable');
        }, 500);
    }
});

right.on('click', function() {
    if (!right.hasClass('disable')) {
        right.addClass('disable');
        page++;
        r_list.css("left", "-" + 465*page + "px");
        if (page >= 7-2) {
            page = 0;
            setTimeout(function() {
                r_list.removeClass('animated');
                r_list.css("left", "-" + 465*page + "px");
                setTimeout(function() {
                    r_list.addClass('animated');
                }, 20);
            }, 500);
        }
        setTimeout(function () {
            right.removeClass('disable');
        }, 500);
    }
});




// 자주 묻는 질문 클릭시 오른쪽 아이콘 업/다운 회전
$('.faq_title').on('click', function() {
    var box = $(this).parent();
    if (box.hasClass('active')) {
        box.removeClass('active');
        box.find('.control_button').addClass('rotated');
        box.find('.control_button').removeClass('rotated');

    } else {
        box.addClass('active');
        box.find('.control_button').removeClass('rotated');
        box.find('.control_button').addClass('rotated');

    }
})

document.getElementsByClassName('.faq_title').onclick = function() {
    document.getElementsByClassName('.control_button').classList.toggle('rotated');
}






