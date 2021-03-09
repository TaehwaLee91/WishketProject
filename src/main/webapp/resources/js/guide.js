// FAQ 검색
function getFAQList() {
    var search_query = $('#searchFaqInput').val();
    var ua = window.navigator.userAgent;
    // 윈도우인 경우
    if (ua.indexOf('MSIE') > 0 || ua.indexOf('Trident') > 0) {
        search_query = encodeURI(search_query);
    }
    location.href = "http://www.wishket.com/customer-support/search/?q=" + search_query;
}

// 이용후기 내 상단바
var stepNav = $("#stepNav");
var navWrapper = $("#navWrapper");
var cloneNav = navWrapper.clone();
var stickyOffset = navWrapper.offset();
var $contentDivs = $(".guide-contents");

window.addEventListener('scroll', function () {
    $('.link-wrapper a').removeClass('active');
    if (stickyOffset.top < $(window).scrollTop()) {
        navWrapper.addClass('active');
        navWrapper.before(cloneNav);
        $contentDivs.each(function (k) {
            var $this = $(this);
            var _thisOffset = $this.offset();
            var _actPosition = _thisOffset.top - $(window).scrollTop() - navWrapper.outerHeight(true);
            var targetLink = $('a[data-target="' + this.id + '"]').last();
            if (_actPosition < stickyOffset.top && _actPosition + $this.height() > 0) {
                targetLink.addClass('active')
                stepNav.css('--step-selector-width', targetLink.width() + 'px');
                stepNav.css('--step-selector-x', targetLink.position().left + 'px');
                return false;
            }
        });
    } else {
        initHeader();
    }
});

function initHeader() {
    cloneNav.remove();
    navWrapper.removeClass('active');
    var firstLink = $($('#navWrapper li a')[0]);
    firstLink.addClass('active');
    stepNav.css('--step-selector-width', firstLink.width() + 'px');
    stepNav.css('--step-selector-x', firstLink.position().left + 'px');
}
$('.dropdown-box .question').on('click', function () {
    var $this = $(this);
    if ($this.hasClass('active')) {
        $this.removeClass('active');
    } else {
        $('.dropdown-box .question').removeClass('active');
        $this.addClass('active');
    }
})
$('.guide-link-box').on('click', function () {
    window.location.href = $(this).data('target');
})

function scrollToTarget(target) {
    var headerHeight = navWrapper.outerHeight(true) - 2;
    var el = document.getElementById($(target).data('target'))
    $('html').animate({scrollTop: $(el).offset().top - headerHeight}, 500);
}

$(document).ready(function () {
    initHeader();
})



/*
// 파트너스 찾기로 이동
$('.guide-link-box').on('click', function () {
    window.location.href = $(this).data('target');
})
*/

// 질문 클릭시 답변 부분 열리기 - 아코디언1
var accModule = function() {
    var acc_wrap = $('.dropdown-box'),
        question = acc_wrap.find('p'),
        answer = question.next('p');
    return {
        runInit: function() {
            this.accHandler();
        },
        accHandler: function() {
            var accodian = {
                targetClick: function(e) {
                    var eTarget = $(e.currentTarget);
                    if (eTarget.next().is(':visible')) {
                        eTarget.next().slideUp();
                        return;
                    }
                    answer.slideUp();
                    eTarget.next().slideDown();
                }
            };
            question.on('click', accodian.targetClick);
        }
    }
}();

// 질문 클릭시 답변 부분 열리기 '실행' - 아코디언2
accModule.runInit();

