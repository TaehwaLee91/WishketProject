
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- 이 페이지에서 사용한 아이콘 스타일시트 -->
    <link href="/css/legacy_nav_compilation.css" rel="stylesheet">   <!-- 이 페이지에서만 사용하는 네비 스타일시트 -->
    <link href="/css/main2.css" rel="stylesheet">
    <link href="/css/page2.css" rel="stylesheet">
    <link href="/css/page_sub.css" rel="stylesheet">     <!-- 사이드바 스타일시트-->

    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <link href="/css/jquery-ui.min.js" rel="stylesheet">

    <style type="text/css">/* Chart.js */
    /*
     * DOM element rendering detection
     * https://davidwalsh.name/detect-node-insertion
     */
    @keyframes chartjs-render-animation {
        from {
            opacity: 0.99;
        }
        to {
            opacity: 1;
        }
    }
    .chartjs-render-monitor {
        animation: chartjs-render-animation 0.001s;
    }
    /*
     * DOM element resizing detection
     * https://github.com/marcj/css-element-queries
     */
    .chartjs-size-monitor,
    .chartjs-size-monitor-expand,
    .chartjs-size-monitor-shrink {
        position: absolute;
        direction: ltr;
        left: 0;
        top: 0;
        right: 0;
        bottom: 0;
        overflow: hidden;
        pointer-events: none;
        visibility: hidden;
        z-index: -1;
    }
    .chartjs-size-monitor-expand > div {
        position: absolute;
        width: 1000000px;
        height: 1000000px;
        left: 0;
        top: 0;
    }
    .chartjs-size-monitor-shrink > div {
        position: absolute;
        width: 200%;
        height: 200%;
        left: 0;
        top: 0;
    }
    </style>

</head>
<body>
<div class>
    <tiles:insertAttribute name="header2"/>
    <a class="advertisement active" id="nav_advertisement" href="https://www.wishket.com/wk_ad/jniM3i3npI"
       style="background-image: url('/img/profiletip.png');"></a>   <!-- 빨간 줄 뜨지만 이상없음 신경쓰지마세요 -->
    <tiles:insertAttribute name="wrap"/>
    <tiles:insertAttribute name="footer2"/>
</div>

<link href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css" rel="stylesheet">
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="/js/NewChart.js"></script>
<script src="/js/ImageSetTool.js"></script>
<script src="/js/RadarChartTool.js"></script>
<script>
    var label_array = ['전문성', ['결과물', '만족도'], '의사소통', '일정 준수', '적극성']
    var score_array = [0.00,
        0.00,
        0.00,
        0.00,
        0.00]
    var $summery_radar = $('#summary-radar-chart')
    var $avg_star_box = $('.avg-star-box')
    AddStarAvgImages(0.00, $avg_star_box)
    SetRadarChart($summery_radar, label_array, score_array)
    var $popup_star_box = $('.popup-star-box')
    AddStarImages($popup_star_box)
    AddStarImages($('.display-star-box'))
</script>
<script src="/js/Chart.js"></script>
</body>

</html> 