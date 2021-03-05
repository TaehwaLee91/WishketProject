<%@ page contentType="text/html;charset=UTF-8" %>

<style>
    body {
        margin: 0;
        padding: 0;
    }

    ul {
        list-style: none;
        padding: 0;
    }

    .aside {
        float: left;
        margin-top: 30px;
        background-color: white;
    }

    .aside {
        width: 200px;
        border: 1px solid #f5c6cb;
        min-height: 500px;
        min-width: 210px;
        padding-left: 20px;
        margin-top: 0px;
    }

    .content-header {
        border: 1px solid #f5c6cb;
        min-height: 150px;
        width: 1080px;
        padding-left: 30px;
        margin-top: 30px;
    }

    .search-list {
        margin: 70px 0 0 0;
        width: 70%;
        text-align: left;
        float: left;
        padding: 30px;
        height: 330px;
        width: 860px;
        border: 1px solid #f5c6cb;
    }

    .filter-line {
        margin-left: -8px;
        width: 180px;
    }

    .result-order-box {
        border: 1px solid #f5c6cb;
        min-height: 45px;
        width: 860px;
        padding-left: 10px;
        padding-top: -20px;
        margin: 10px 0 -20px 220px
    }

    .partners-info1 {
        margin: -80px 0 0 130px
    }

    .partners-status {
        margin: -170px 0px 0 0;
        text-align: right;
    }

    .dropbtn {
        background-color: white;
        color: black;
        padding: 2px 5px 2px 5px;
        font-size: 16px;
        border: 1px solid #dedede;
        width: 160px;
        text-align: left;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f1f1f1;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {background-color: #ddd;}

    .dropdown:hover .dropdown-content {display: block;}


    .tline {
        border-left: 1px solid #f5c6cb;
        height: 20px;
        position: absolute;
        left: 50%;
        margin: -22px 0px 0px -97px;
    }

    .evaluation-line {
        border-left: 10px solid #f5c6cb;
        left: 50%;
        width: 220px;
        margin: 5px 0 0 570px
    }

    .iconi {
        height: 18px;
        width: 18px;
        margin-top: -4px;
    }

    .order-radio {
        height: 10px;
        width: 10px;
    }

    .caption-1-medium {
        font-size: 13px
    }

    input:focus {
        outline: 2px solid #7abaff;
    }

    .hide {
        font-size: 13px;
        display: inline-block;
        width: 80.5%;
        white-space: nowrap;
        overflow: hidden;
        opacity: 0.7
    }
</style>
<div id="main">
    <div class="container">
        <div class="page">
            <div class="content">
                <div class="content-header">
                    <h3 class="header-text" style="font-weight: bold; margin-top: 40px">
                        파트너스 찾기
                    </h3>
                    <small class="small-text" id="total_list_num" style="opacity: 0.6; font-size: 20px">
                        86,913명의 파트너스가 있습니다.
                    </small>
                    <section class="search-box" style="text-align: right">
                        <div class="form-group" style="margin: -40px 30px 0 0" ;>
                            <input class="input-box col-2" id="id" maxlength="100" name="id" type="text"
                                   style="height: 30px; text-align: right" ;>
                            <input class="btn btn-light form-control" onclick="getList();"
                                   type="button" value="검색"
                                   style="height: 30px; width: 50px; font-size: 13px; margin-top: -7px; background-color: #2099bb; color: white;">
                        </div>
                    </section>
                </div> <!-- content header -->

                <div class="content-inner">
                    <section class="aside">
                        <div class="partners-side-bar-wrapper">
                            <br><br>
                            <div class="filter-box list-box" style="margin-top: -30px">파트너스 필터</div>
                            <hr class="filter-line">
                            <div class="category-title body-2-medium" style="margin: 20px 0 0 0px">
                                선호 프로젝트 형태&nbsp;
                                <img class="iconi" src="/img/tooltip.png"
                                     title="외주(도급) 프로젝트
프로젝트 단위로 금액을 지급받고 원하는 장소에서 프로젝트를 선호하는 파트너

상주 프로젝트
월 단위로 금액을 지급받고 클라이언트가 요청한 장소에서 프로젝트를 선호하는 파트너">
                            </div>
                            <div class="filter-detail-checkbox" style="margin-top: 10px">
                                <div class="filter-item">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket" data-value="외주(도급)"
                                               id="project_outSourcing" name="project_outSourcing"
                                               onclick="getProjectList();" type="checkbox" value="outSourcing">
                                        <label>&nbsp;외주(도급)</label>
                                    </span>
                                    </label>
                                </div>
                                <div class="filter-item" style="margin-top: -15px">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket" data-value="상주"
                                               id="project_Resident" name="project_Resident"
                                               onclick="getProjectList();" type="checkbox" value="outSourcing">
                                        <span>&nbsp;상주</span>
                                    </span>
                                    </label>
                                </div>
                            </div>
                            <br>
                            <div class="filter-category-box show-only-checkbox" id="categoryBox">
                                <div class="filter-category-title body-2-medium" style="margin-top: -11px">파트너 직종
                                </div>
                                <div class="filter-item">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket" data-value="개발"
                                               id="project_category" name="project_category"
                                               onclick="getProjectList();" type="checkbox" value="develop"
                                               style="margin-top: 10px">
                                        <span>&nbsp;개발</span>
                                    </span>
                                    </label>
                                </div>
                                <div class="filter-item" style="margin-top: -6px">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket" data-value="디자인"
                                               id="project_design" name="project_design"
                                               onclick="getProjectList();" type="checkbox" value="develop">
                                        <span>&nbsp;디자인</span>
                                    </span>
                                    </label>
                                </div>
                            </div>

                            <br>
                            <div class="filter-category-box show-only-checkbox" id="categoryBox2">
                                <div class="filter-category-title body-2-medium" style="margin-top: -11px">파트너 형태
                                </div>
                                <div class="filter-item">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket" data-value="법인사업자"
                                               id="corporate_business" name="corporate_business"
                                               onclick="getProjectList();" type="checkbox" value="develop"
                                               style="margin-top: 10px">
                                        <span>&nbsp;법인사업자</span>
                                    </span>
                                    </label>
                                </div>
                                <div class="filter-item" style="margin-top: -6px">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket" data-value="개인사업자"
                                               id="individual_business" name="individual_business"
                                               onclick="getProjectList();" type="checkbox" value="develop">
                                        <span>&nbsp;개인사업자</span>
                                    </span>
                                    </label>
                                </div>
                                <div class="filter-item" style="margin-top: -10px">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket" data-value="팀"
                                               id="team" name="team"
                                               onclick="getProjectList();" type="checkbox" value="develop"
                                               style="margin-top: 10px">
                                        <span>&nbsp;팀</span>
                                    </span>
                                    </label>
                                </div>
                                <div class="filter-item" style="margin-top: -7px">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket" data-value="개인"
                                               id="individual" name="individual"
                                               onclick="getProjectList();" type="checkbox" value="develop">
                                        <span>&nbsp;개인</span>
                                    </span>
                                    </label>
                                </div>
                            </div>
                            <br>
                            <div class="selector-list" style="margin-top: -20px">
                                <div class="selector-list-title">파트너 지역</div>
                                <div class="dropdown">
                                    <button class="btn btn-default address-select-button dropbtn" data-toggle="dropdown"
                                            type="button">
                                        <span style="float:left;">전체 선택</span>
                                        <i class="fa fa-sort" style="float: right; margin-top: 3px"></i>
                                    </button>
                                    <div class="dropdown-content">
                                        <ul class="dropdown-selector">
                                            <li class="dropdown-scroll">
                                                <input id="address-0" name="address" type="checkbox">
                                                <label class="address-select-label" for="address-0">
                                                    전체선택
                                                </label>
                                                <ul class="addr">
                                                    <li style="min-width: 138px;">
                                                        <input id="address-1" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-1">서울특별시</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-9" name="address" type="checkbox">
                                                        <label class="address-select-label" for="address-9">경기도</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-4" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-4">인천광역시</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-2" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-2">부산광역시</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-3" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-3">대구광역시</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-5" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-5">광주광역시</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-6" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-6">대구광역시</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-8" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-8">세종특별자치시</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-10" name="address" type="checkbox">
                                                        <label class="address-select-label" for="address-10">강원도</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-11" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-11">충청북도</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-12" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-12">충청남도</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-13" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-13">전라북도</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-14" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-14">전라남도</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-15" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-15">경상북도</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-16" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-16">경상남도</label>
                                                    </li>
                                                    <li>
                                                        <input id="address-17" name="address" type="checkbox">
                                                        <label class="address-select-label"
                                                               for="address-17">제주특별자치도</label>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                </ul> <!-- 지역선택 추후추가 -->
                            </div>
                        </div>
                    </section> <!-- sidebar -->

                    <section class="list-all">
                        <div class="list-box">
                            <div class="result-header">
                                <div class="result-order-box">
                                    <form name="" method="" action="" style="margin-top: 10px">
                                        <input checked="" class="order-radio" id="line"
                                               name="line" type="image"
                                               src="/img/check-inactive.png" value="default"/>
                                        <label class="caption-1-medium order-text" for="line">기본 정렬 순&nbsp;</label>
                                        <input class="order-radio" id="high" name="high"
                                               type="image" src="/img/check-inactive.png"
                                               value="price"/>
                                        <label class="caption-1-medium order-text" for="high">평점 높은
                                            순&nbsp;</label>
                                        <input class="order-radio" id="portfolio" name="portfolio"
                                               type="image" src="/img/check-inactive.png"
                                               value="applicant"/>
                                        <label class="caption-1-medium order-text" for="portfolio">포트폴리오 많은
                                            순&nbsp;</label>
                                        <input class="order-radio" id="update" name="update"
                                               type="image" src="/img/check-inactive.png"
                                               value="submit"/>
                                        <label class="caption-1-medium order-text" for="update">최근 업데이트
                                            순&nbsp;</label>
                                    </form>
                                </div>
                            </div> <!-- result orderbox -->
                        </div>  <!-- result header wrap -->

                        <div id="partners-list-box">
                            <section class="search-list bg-white" style="margin: 30px 0 0 10px">
                                <section class="partners-info">
                                    <div class="partners-image">
                                        <a class="coupang" href="https://www.coupang.com/">
                                            <img alt="팀프로젝트" class="team" src="/img/파트너.png"
                                                 style="height: 90px; width: 90px">
                                        </a>
                                    </div>
                                    <section class="partners-info1">
                                        <div class="info-head">
                                            <h4 class="username" style="color: skyblue; font-size: 20px">Tae hwa lee
                                                Team
                                                <span class="label label-sm" style="color: white;
                                            background-color: green; font-size: 13px; border-radius: 2px;">활동가능</span>
                                            </h4>
                                        </div>
                                        <section class="business-info">
                                            <span class="developer">
                                                <i class="fa fa-keyboard-o"></i>
                                                개발자&nbsp;&nbsp;&nbsp;
                                            </span>
                                            <hr class="tline">
                                            <span class="Corpor business">
                                                <i class="fa fa-building-o"></i>
                                                팀 프로젝트
                                            </span>
                                        </section>
                                        <section class="Explanation" style="font-size: 14px; opacity: 0.6">
                                            <p>반갑습니다 저희는 팀장 이태화의 진두지휘에 맞춰<br>
                                                열심히 프로젝트를 제작하는 이태화팀입니다.<br>
                                                홈페이지 제작을 위하여 밤낮 가리지않고 열심히 갈아 넣었습니다.<br>
                                                취업을 위해 모두가 열심히 하였으니 잘 봐주시기 바랍니다.<br>
                                                진행 가능한 시간상 여기까지가 최선이였습니다 감사합니다.</p>
                                        </section>
                                        <div class="engine">
                                        <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">JavaScript</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">WEB</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">HTML</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">APP</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">C++, C#</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Net,Asp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Jsp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">los</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Php</span>
                                        </div>
                                        <div class="engine2">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Node.js</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Webrtc</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">red5pro</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Wowza</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">아이폰 앱 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">안드로이드 앱 개발</span>
                                        </div>
                                        <div class="engine3">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">윈도우 응용프로그램 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">웹사이트 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">데이터베이스 설계 및 알고리즘 개발</span>
                                        </div>
                                        <div class="engine4">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Objective-C</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Kotlin</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Flutter</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Html5</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Mysql</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Css</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Aws</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Dart</span>
                                        </div>
                                    </section>
                                </section>

                                <section class="partners-grade">
                                    <div class="partners-status">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="avg star-box">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <span class="evaluation">
                                                    <span class="point"
                                                          style="font-size: 20px;">&nbsp;&nbsp;&nbsp;4.97</span>
                                                    <span class="evaluation" style="font-size: 13px; opacity: 0.6">/ 평가 대기</span>
                                                </span>
                                                </div>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="contract">
                                                    <span class="contract-project"
                                                          style="margin: 0 80px 0 0">계약한 프로젝트</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gun">건</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="portfolio">
                                                    <span class="portfolio" style="margin: 0 116px 0 0">포트폴리오</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gae">개</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                        </ul>
                                    </div>
                                    <div class="identity" style="text-align: right; font-size: 13px">
                                        <span class="certification" style="margin-right: 70px">
                                            <i class="fa fa-check-circle-o"></i>
                                            신원인증
                                        </span>
                                        <span class="contact">
                                            <i class="fa fa-check-circle-o"></i>
                                            연락처 등록
                                        </span>
                                    </div>

                                </section>

                            </section> <!-- search list -->
                            <section class="search-list bg-white" style="margin: 30px 0 0 10px">
                                <section class="partners-info">
                                    <div class="partners-image">
                                        <a class="coupang" href="https://www.coupang.com/">
                                            <img alt="팀프로젝트" class="team" src="/img/파트너.png"
                                                 style="height: 90px; width: 90px">
                                        </a>
                                    </div>
                                    <section class="partners-info1">
                                        <div class="info-head">
                                            <h4 class="username" style="color: skyblue; font-size: 20px">Tae hwa lee
                                                Team
                                                <span class="label label-sm" style="color: white;
                                            background-color: green; font-size: 13px; border-radius: 2px;">활동가능</span>
                                            </h4>
                                        </div>
                                        <section class="business-info">
                                            <span class="developer">
                                                <i class="fa fa-keyboard-o"></i>
                                                개발자&nbsp;&nbsp;&nbsp;
                                            </span>
                                            <hr class="tline">
                                            <span class="Corpor business">
                                                <i class="fa fa-building-o"></i>
                                                팀 프로젝트
                                            </span>
                                        </section>
                                        <section class="Explanation" style="font-size: 14px; opacity: 0.6">
                                            <p>반갑습니다 저희는 팀장 이태화의 진두지휘에 맞춰<br>
                                                열심히 프로젝트를 제작하는 이태화팀입니다.<br>
                                                홈페이지 제작을 위하여 밤낮 가리지않고 열심히 갈아 넣었습니다.<br>
                                                취업을 위해 모두가 열심히 하였으니 잘 봐주시기 바랍니다.<br>
                                                진행 가능한 시간상 여기까지가 최선이였습니다 감사합니다.</p>
                                        </section>
                                        <div class="engine">
                                        <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">JavaScript</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">WEB</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">HTML</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">APP</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">C++, C#</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Net,Asp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Jsp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">los</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Php</span>
                                        </div>
                                        <div class="engine2">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Node.js</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Webrtc</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">red5pro</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Wowza</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">아이폰 앱 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">안드로이드 앱 개발</span>
                                        </div>
                                        <div class="engine3">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">윈도우 응용프로그램 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">웹사이트 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">데이터베이스 설계 및 알고리즘 개발</span>
                                        </div>
                                        <div class="engine4">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Objective-C</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Kotlin</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Flutter</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Html5</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Mysql</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Css</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Aws</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Dart</span>
                                        </div>
                                    </section>
                                </section>

                                <section class="partners-grade">
                                    <div class="partners-status">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="avg star-box">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <span class="evaluation">
                                                    <span class="point"
                                                          style="font-size: 20px;">&nbsp;&nbsp;&nbsp;4.97</span>
                                                    <span class="evaluation" style="font-size: 13px; opacity: 0.6">/ 평가 대기</span>
                                                </span>
                                                </div>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="contract">
                                                    <span class="contract-project"
                                                          style="margin: 0 80px 0 0">계약한 프로젝트</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gun">건</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="portfolio">
                                                    <span class="portfolio" style="margin: 0 116px 0 0">포트폴리오</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gae">개</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                        </ul>
                                    </div>
                                    <div class="identity" style="text-align: right; font-size: 13px">
                                        <span class="certification" style="margin-right: 70px">
                                            <i class="fa fa-check-circle-o"></i>
                                            신원인증
                                        </span>
                                        <span class="contact">
                                            <i class="fa fa-check-circle-o"></i>
                                            연락처 등록
                                        </span>
                                    </div>

                                </section>

                            </section> <!-- search list -->
                            <section class="search-list bg-white" style="margin: 30px 0 0 220px">
                                <section class="partners-info">
                                    <div class="partners-image">
                                        <a class="coupang" href="https://www.coupang.com/">
                                            <img alt="팀프로젝트" class="team" src="/img/파트너.png"
                                                 style="height: 90px; width: 90px">
                                        </a>
                                    </div>
                                    <section class="partners-info1">
                                        <div class="info-head">
                                            <h4 class="username" style="color: skyblue; font-size: 20px">Tae hwa lee
                                                Team
                                                <span class="label label-sm" style="color: white;
                                            background-color: green; font-size: 13px; border-radius: 2px;">활동가능</span>
                                            </h4>
                                        </div>
                                        <section class="business-info">
                                            <span class="developer">
                                                <i class="fa fa-keyboard-o"></i>
                                                개발자&nbsp;&nbsp;&nbsp;
                                            </span>
                                            <hr class="tline">
                                            <span class="Corpor business">
                                                <i class="fa fa-building-o"></i>
                                                팀 프로젝트
                                            </span>
                                        </section>
                                        <section class="Explanation" style="font-size: 14px; opacity: 0.6">
                                            <p>반갑습니다 저희는 팀장 이태화의 진두지휘에 맞춰<br>
                                                열심히 프로젝트를 제작하는 이태화팀입니다.<br>
                                                홈페이지 제작을 위하여 밤낮 가리지않고 열심히 갈아 넣었습니다.<br>
                                                취업을 위해 모두가 열심히 하였으니 잘 봐주시기 바랍니다.<br>
                                                진행 가능한 시간상 여기까지가 최선이였습니다 감사합니다.</p>
                                        </section>
                                        <div class="engine">
                                        <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">JavaScript</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">WEB</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">HTML</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">APP</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">C++, C#</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Net,Asp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Jsp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">los</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Php</span>
                                        </div>
                                        <div class="engine2">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Node.js</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Webrtc</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">red5pro</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Wowza</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">아이폰 앱 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">안드로이드 앱 개발</span>
                                        </div>
                                        <div class="engine3">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">윈도우 응용프로그램 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">웹사이트 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">데이터베이스 설계 및 알고리즘 개발</span>
                                        </div>
                                        <div class="engine4">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Objective-C</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Kotlin</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Flutter</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Html5</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Mysql</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Css</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Aws</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Dart</span>
                                        </div>
                                    </section>
                                </section>

                                <section class="partners-grade">
                                    <div class="partners-status">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="avg star-box">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <span class="evaluation">
                                                    <span class="point"
                                                          style="font-size: 20px;">&nbsp;&nbsp;&nbsp;4.97</span>
                                                    <span class="evaluation" style="font-size: 13px; opacity: 0.6">/ 평가 대기</span>
                                                </span>
                                                </div>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="contract">
                                                    <span class="contract-project"
                                                          style="margin: 0 80px 0 0">계약한 프로젝트</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gun">건</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="portfolio">
                                                    <span class="portfolio" style="margin: 0 116px 0 0">포트폴리오</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gae">개</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                        </ul>
                                    </div>
                                    <div class="identity" style="text-align: right; font-size: 13px">
                                        <span class="certification" style="margin-right: 70px">
                                            <i class="fa fa-check-circle-o"></i>
                                            신원인증
                                        </span>
                                        <span class="contact">
                                            <i class="fa fa-check-circle-o"></i>
                                            연락처 등록
                                        </span>
                                    </div>

                                </section>

                            </section> <!-- search list -->
                            <section class="search-list bg-white" style="margin: 30px 0 0 220px">
                                <section class="partners-info">
                                    <div class="partners-image">
                                        <a class="coupang" href="https://www.coupang.com/">
                                            <img alt="팀프로젝트" class="team" src="/img/파트너.png"
                                                 style="height: 90px; width: 90px">
                                        </a>
                                    </div>
                                    <section class="partners-info1">
                                        <div class="info-head">
                                            <h4 class="username" style="color: skyblue; font-size: 20px">Tae hwa lee
                                                Team
                                                <span class="label label-sm" style="color: white;
                                            background-color: green; font-size: 13px; border-radius: 2px;">활동가능</span>
                                            </h4>
                                        </div>
                                        <section class="business-info">
                                            <span class="developer">
                                                <i class="fa fa-keyboard-o"></i>
                                                개발자&nbsp;&nbsp;&nbsp;
                                            </span>
                                            <hr class="tline">
                                            <span class="Corpor business">
                                                <i class="fa fa-building-o"></i>
                                                팀 프로젝트
                                            </span>
                                        </section>
                                        <section class="Explanation" style="font-size: 14px; opacity: 0.6">
                                            <p>반갑습니다 저희는 팀장 이태화의 진두지휘에 맞춰<br>
                                                열심히 프로젝트를 제작하는 이태화팀입니다.<br>
                                                홈페이지 제작을 위하여 밤낮 가리지않고 열심히 갈아 넣었습니다.<br>
                                                취업을 위해 모두가 열심히 하였으니 잘 봐주시기 바랍니다.<br>
                                                진행 가능한 시간상 여기까지가 최선이였습니다 감사합니다.</p>
                                        </section>
                                        <div class="engine">
                                        <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">JavaScript</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">WEB</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">HTML</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">APP</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">C++, C#</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Net,Asp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Jsp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">los</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Php</span>
                                        </div>
                                        <div class="engine2">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Node.js</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Webrtc</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">red5pro</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Wowza</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">아이폰 앱 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">안드로이드 앱 개발</span>
                                        </div>
                                        <div class="engine3">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">윈도우 응용프로그램 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">웹사이트 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">데이터베이스 설계 및 알고리즘 개발</span>
                                        </div>
                                        <div class="engine4">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Objective-C</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Kotlin</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Flutter</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Html5</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Mysql</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Css</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Aws</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Dart</span>
                                        </div>
                                    </section>
                                </section>

                                <section class="partners-grade">
                                    <div class="partners-status">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="avg star-box">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <span class="evaluation">
                                                    <span class="point"
                                                          style="font-size: 20px;">&nbsp;&nbsp;&nbsp;4.97</span>
                                                    <span class="evaluation" style="font-size: 13px; opacity: 0.6">/ 평가 대기</span>
                                                </span>
                                                </div>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="contract">
                                                    <span class="contract-project"
                                                          style="margin: 0 80px 0 0">계약한 프로젝트</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gun">건</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="portfolio">
                                                    <span class="portfolio" style="margin: 0 116px 0 0">포트폴리오</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gae">개</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                        </ul>
                                    </div>
                                    <div class="identity" style="text-align: right; font-size: 13px">
                                        <span class="certification" style="margin-right: 70px">
                                            <i class="fa fa-check-circle-o"></i>
                                            신원인증
                                        </span>
                                        <span class="contact">
                                            <i class="fa fa-check-circle-o"></i>
                                            연락처 등록
                                        </span>
                                    </div>

                                </section>

                            </section> <!-- search list -->
                            <section class="search-list bg-white" style="margin: 30px 0 0 220px">
                                <section class="partners-info">
                                    <div class="partners-image">
                                        <a class="coupang" href="https://www.coupang.com/">
                                            <img alt="팀프로젝트" class="team" src="/img/파트너.png"
                                                 style="height: 90px; width: 90px">
                                        </a>
                                    </div>
                                    <section class="partners-info1">
                                        <div class="info-head">
                                            <h4 class="username" style="color: skyblue; font-size: 20px">Tae hwa lee
                                                Team
                                                <span class="label label-sm" style="color: white;
                                            background-color: green; font-size: 13px; border-radius: 2px;">활동가능</span>
                                            </h4>
                                        </div>
                                        <section class="business-info">
                                            <span class="developer">
                                                <i class="fa fa-keyboard-o"></i>
                                                개발자&nbsp;&nbsp;&nbsp;
                                            </span>
                                            <hr class="tline">
                                            <span class="Corpor business">
                                                <i class="fa fa-building-o"></i>
                                                팀 프로젝트
                                            </span>
                                        </section>
                                        <section class="Explanation" style="font-size: 14px; opacity: 0.6">
                                            <p>반갑습니다 저희는 팀장 이태화의 진두지휘에 맞춰<br>
                                                열심히 프로젝트를 제작하는 이태화팀입니다.<br>
                                                홈페이지 제작을 위하여 밤낮 가리지않고 열심히 갈아 넣었습니다.<br>
                                                취업을 위해 모두가 열심히 하였으니 잘 봐주시기 바랍니다.<br>
                                                진행 가능한 시간상 여기까지가 최선이였습니다 감사합니다.</p>
                                        </section>
                                        <div class="engine">
                                        <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">JavaScript</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">WEB</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">HTML</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">APP</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">C++, C#</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Net,Asp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Jsp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">los</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Php</span>
                                        </div>
                                        <div class="engine2">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Node.js</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Webrtc</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">red5pro</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Wowza</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">아이폰 앱 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">안드로이드 앱 개발</span>
                                        </div>
                                        <div class="engine3">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">윈도우 응용프로그램 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">웹사이트 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">데이터베이스 설계 및 알고리즘 개발</span>
                                        </div>
                                        <div class="engine4">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Objective-C</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Kotlin</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Flutter</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Html5</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Mysql</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Css</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Aws</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Dart</span>
                                        </div>
                                    </section>
                                </section>

                                <section class="partners-grade">
                                    <div class="partners-status">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="avg star-box">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <span class="evaluation">
                                                    <span class="point"
                                                          style="font-size: 20px;">&nbsp;&nbsp;&nbsp;4.97</span>
                                                    <span class="evaluation" style="font-size: 13px; opacity: 0.6">/ 평가 대기</span>
                                                </span>
                                                </div>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="contract">
                                                    <span class="contract-project"
                                                          style="margin: 0 80px 0 0">계약한 프로젝트</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gun">건</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="portfolio">
                                                    <span class="portfolio" style="margin: 0 116px 0 0">포트폴리오</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gae">개</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                        </ul>
                                    </div>
                                    <div class="identity" style="text-align: right; font-size: 13px">
                                        <span class="certification" style="margin-right: 70px">
                                            <i class="fa fa-check-circle-o"></i>
                                            신원인증
                                        </span>
                                        <span class="contact">
                                            <i class="fa fa-check-circle-o"></i>
                                            연락처 등록
                                        </span>
                                    </div>

                                </section>

                            </section> <!-- search list -->
                            <section class="search-list bg-white" style="margin: 30px 0 0 220px">
                                <section class="partners-info">
                                    <div class="partners-image">
                                        <a class="coupang" href="https://www.coupang.com/">
                                            <img alt="팀프로젝트" class="team" src="/img/파트너.png"
                                                 style="height: 90px; width: 90px">
                                        </a>
                                    </div>
                                    <section class="partners-info1">
                                        <div class="info-head">
                                            <h4 class="username" style="color: skyblue; font-size: 20px">Tae hwa lee
                                                Team
                                                <span class="label label-sm" style="color: white;
                                            background-color: green; font-size: 13px; border-radius: 2px;">활동가능</span>
                                            </h4>
                                        </div>
                                        <section class="business-info">
                                            <span class="developer">
                                                <i class="fa fa-keyboard-o"></i>
                                                개발자&nbsp;&nbsp;&nbsp;
                                            </span>
                                            <hr class="tline">
                                            <span class="Corpor business">
                                                <i class="fa fa-building-o"></i>
                                                팀 프로젝트
                                            </span>
                                        </section>
                                        <section class="Explanation" style="font-size: 14px; opacity: 0.6">
                                            <p>반갑습니다 저희는 팀장 이태화의 진두지휘에 맞춰<br>
                                                열심히 프로젝트를 제작하는 이태화팀입니다.<br>
                                                홈페이지 제작을 위하여 밤낮 가리지않고 열심히 갈아 넣었습니다.<br>
                                                취업을 위해 모두가 열심히 하였으니 잘 봐주시기 바랍니다.<br>
                                                진행 가능한 시간상 여기까지가 최선이였습니다 감사합니다.</p>
                                        </section>
                                        <div class="engine">
                                        <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">JavaScript</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">WEB</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">HTML</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">APP</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">C++, C#</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Net,Asp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Jsp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">los</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Php</span>
                                        </div>
                                        <div class="engine2">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Node.js</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Webrtc</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">red5pro</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Wowza</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">아이폰 앱 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">안드로이드 앱 개발</span>
                                        </div>
                                        <div class="engine3">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">윈도우 응용프로그램 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">웹사이트 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">데이터베이스 설계 및 알고리즘 개발</span>
                                        </div>
                                        <div class="engine4">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Objective-C</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Kotlin</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Flutter</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Html5</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Mysql</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Css</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Aws</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Dart</span>
                                        </div>
                                    </section>
                                </section>

                                <section class="partners-grade">
                                    <div class="partners-status">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="avg star-box">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <span class="evaluation">
                                                    <span class="point"
                                                          style="font-size: 20px;">&nbsp;&nbsp;&nbsp;4.97</span>
                                                    <span class="evaluation" style="font-size: 13px; opacity: 0.6">/ 평가 대기</span>
                                                </span>
                                                </div>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="contract">
                                                    <span class="contract-project"
                                                          style="margin: 0 80px 0 0">계약한 프로젝트</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gun">건</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="portfolio">
                                                    <span class="portfolio" style="margin: 0 116px 0 0">포트폴리오</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gae">개</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                        </ul>
                                    </div>
                                    <div class="identity" style="text-align: right; font-size: 13px">
                                        <span class="certification" style="margin-right: 70px">
                                            <i class="fa fa-check-circle-o"></i>
                                            신원인증
                                        </span>
                                        <span class="contact">
                                            <i class="fa fa-check-circle-o"></i>
                                            연락처 등록
                                        </span>
                                    </div>

                                </section>

                            </section> <!-- search list -->
                            <section class="search-list bg-white" style="margin: 30px 0 0 220px">
                                <section class="partners-info">
                                    <div class="partners-image">
                                        <a class="coupang" href="https://www.coupang.com/">
                                            <img alt="팀프로젝트" class="team" src="/img/파트너.png"
                                                 style="height: 90px; width: 90px">
                                        </a>
                                    </div>
                                    <section class="partners-info1">
                                        <div class="info-head">
                                            <h4 class="username" style="color: skyblue; font-size: 20px">Tae hwa lee
                                                Team
                                                <span class="label label-sm" style="color: white;
                                            background-color: green; font-size: 13px; border-radius: 2px;">활동가능</span>
                                            </h4>
                                        </div>
                                        <section class="business-info">
                                            <span class="developer">
                                                <i class="fa fa-keyboard-o"></i>
                                                개발자&nbsp;&nbsp;&nbsp;
                                            </span>
                                            <hr class="tline">
                                            <span class="Corpor business">
                                                <i class="fa fa-building-o"></i>
                                                팀 프로젝트
                                            </span>
                                        </section>
                                        <section class="Explanation" style="font-size: 14px; opacity: 0.6">
                                            <p>반갑습니다 저희는 팀장 이태화의 진두지휘에 맞춰<br>
                                                열심히 프로젝트를 제작하는 이태화팀입니다.<br>
                                                홈페이지 제작을 위하여 밤낮 가리지않고 열심히 갈아 넣었습니다.<br>
                                                취업을 위해 모두가 열심히 하였으니 잘 봐주시기 바랍니다.<br>
                                                진행 가능한 시간상 여기까지가 최선이였습니다 감사합니다.</p>
                                        </section>
                                        <div class="engine">
                                        <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">JavaScript</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">WEB</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">HTML</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">APP</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">C++, C#</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Net,Asp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Jsp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">los</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Php</span>
                                        </div>
                                        <div class="engine2">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Node.js</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Webrtc</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">red5pro</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Wowza</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">아이폰 앱 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">안드로이드 앱 개발</span>
                                        </div>
                                        <div class="engine3">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">윈도우 응용프로그램 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">웹사이트 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">데이터베이스 설계 및 알고리즘 개발</span>
                                        </div>
                                        <div class="engine4">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Objective-C</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Kotlin</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Flutter</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Html5</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Mysql</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Css</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Aws</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Dart</span>
                                        </div>
                                    </section>
                                </section>

                                <section class="partners-grade">
                                    <div class="partners-status">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="avg star-box">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <span class="evaluation">
                                                    <span class="point"
                                                          style="font-size: 20px;">&nbsp;&nbsp;&nbsp;4.97</span>
                                                    <span class="evaluation" style="font-size: 13px; opacity: 0.6">/ 평가 대기</span>
                                                </span>
                                                </div>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="contract">
                                                    <span class="contract-project"
                                                          style="margin: 0 80px 0 0">계약한 프로젝트</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gun">건</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="portfolio">
                                                    <span class="portfolio" style="margin: 0 116px 0 0">포트폴리오</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gae">개</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                        </ul>
                                    </div>
                                    <div class="identity" style="text-align: right; font-size: 13px">
                                        <span class="certification" style="margin-right: 70px">
                                            <i class="fa fa-check-circle-o"></i>
                                            신원인증
                                        </span>
                                        <span class="contact">
                                            <i class="fa fa-check-circle-o"></i>
                                            연락처 등록
                                        </span>
                                    </div>

                                </section>

                            </section> <!-- search list -->
                            <section class="search-list bg-white" style="margin: 30px 0 0 220px">
                                <section class="partners-info">
                                    <div class="partners-image">
                                        <a class="coupang" href="https://www.coupang.com/">
                                            <img alt="팀프로젝트" class="team" src="/img/파트너.png"
                                                 style="height: 90px; width: 90px">
                                        </a>
                                    </div>
                                    <section class="partners-info1">
                                        <div class="info-head">
                                            <h4 class="username" style="color: skyblue; font-size: 20px">Tae hwa lee
                                                Team
                                                <span class="label label-sm" style="color: white;
                                            background-color: green; font-size: 13px; border-radius: 2px;">활동가능</span>
                                            </h4>
                                        </div>
                                        <section class="business-info">
                                            <span class="developer">
                                                <i class="fa fa-keyboard-o"></i>
                                                개발자&nbsp;&nbsp;&nbsp;
                                            </span>
                                            <hr class="tline">
                                            <span class="Corpor business">
                                                <i class="fa fa-building-o"></i>
                                                팀 프로젝트
                                            </span>
                                        </section>
                                        <section class="Explanation" style="font-size: 14px; opacity: 0.6">
                                            <p>반갑습니다 저희는 팀장 이태화의 진두지휘에 맞춰<br>
                                                열심히 프로젝트를 제작하는 이태화팀입니다.<br>
                                                홈페이지 제작을 위하여 밤낮 가리지않고 열심히 갈아 넣었습니다.<br>
                                                취업을 위해 모두가 열심히 하였으니 잘 봐주시기 바랍니다.<br>
                                                진행 가능한 시간상 여기까지가 최선이였습니다 감사합니다.</p>
                                        </section>
                                        <div class="engine">
                                        <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">JavaScript</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">WEB</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">HTML</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">APP</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">C++, C#</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Net,Asp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Jsp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">los</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Php</span>
                                        </div>
                                        <div class="engine2">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Node.js</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Webrtc</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">red5pro</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Wowza</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">아이폰 앱 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">안드로이드 앱 개발</span>
                                        </div>
                                        <div class="engine3">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">윈도우 응용프로그램 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">웹사이트 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">데이터베이스 설계 및 알고리즘 개발</span>
                                        </div>
                                        <div class="engine4">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Objective-C</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Kotlin</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Flutter</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Html5</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Mysql</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Css</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Aws</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Dart</span>
                                        </div>
                                    </section>
                                </section>

                                <section class="partners-grade">
                                    <div class="partners-status">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="avg star-box">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <span class="evaluation">
                                                    <span class="point"
                                                          style="font-size: 20px;">&nbsp;&nbsp;&nbsp;4.97</span>
                                                    <span class="evaluation" style="font-size: 13px; opacity: 0.6">/ 평가 대기</span>
                                                </span>
                                                </div>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="contract">
                                                    <span class="contract-project"
                                                          style="margin: 0 80px 0 0">계약한 프로젝트</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gun">건</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="portfolio">
                                                    <span class="portfolio" style="margin: 0 116px 0 0">포트폴리오</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gae">개</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                        </ul>
                                    </div>
                                    <div class="identity" style="text-align: right; font-size: 13px">
                                        <span class="certification" style="margin-right: 70px">
                                            <i class="fa fa-check-circle-o"></i>
                                            신원인증
                                        </span>
                                        <span class="contact">
                                            <i class="fa fa-check-circle-o"></i>
                                            연락처 등록
                                        </span>
                                    </div>

                                </section>

                            </section> <!-- search list -->
                            <section class="search-list bg-white" style="margin: 30px 0 0 220px">
                                <section class="partners-info">
                                    <div class="partners-image">
                                        <a class="coupang" href="https://www.coupang.com/">
                                            <img alt="팀프로젝트" class="team" src="/img/파트너.png"
                                                 style="height: 90px; width: 90px">
                                        </a>
                                    </div>
                                    <section class="partners-info1">
                                        <div class="info-head">
                                            <h4 class="username" style="color: skyblue; font-size: 20px">Tae hwa lee
                                                Team
                                                <span class="label label-sm" style="color: white;
                                            background-color: green; font-size: 13px; border-radius: 2px;">활동가능</span>
                                            </h4>
                                        </div>
                                        <section class="business-info">
                                            <span class="developer">
                                                <i class="fa fa-keyboard-o"></i>
                                                개발자&nbsp;&nbsp;&nbsp;
                                            </span>
                                            <hr class="tline">
                                            <span class="Corpor business">
                                                <i class="fa fa-building-o"></i>
                                                팀 프로젝트
                                            </span>
                                        </section>
                                        <section class="Explanation" style="font-size: 14px; opacity: 0.6">
                                            <p>반갑습니다 저희는 팀장 이태화의 진두지휘에 맞춰<br>
                                                열심히 프로젝트를 제작하는 이태화팀입니다.<br>
                                                홈페이지 제작을 위하여 밤낮 가리지않고 열심히 갈아 넣었습니다.<br>
                                                취업을 위해 모두가 열심히 하였으니 잘 봐주시기 바랍니다.<br>
                                                진행 가능한 시간상 여기까지가 최선이였습니다 감사합니다.</p>
                                        </section>
                                        <div class="engine">
                                        <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">JavaScript</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">WEB</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">HTML</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">APP</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">C++, C#</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Net,Asp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Jsp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">los</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Php</span>
                                        </div>
                                        <div class="engine2">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Node.js</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Webrtc</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">red5pro</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Wowza</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">아이폰 앱 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">안드로이드 앱 개발</span>
                                        </div>
                                        <div class="engine3">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">윈도우 응용프로그램 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">웹사이트 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">데이터베이스 설계 및 알고리즘 개발</span>
                                        </div>
                                        <div class="engine4">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Objective-C</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Kotlin</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Flutter</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Html5</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Mysql</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Css</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Aws</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Dart</span>
                                        </div>
                                    </section>
                                </section>

                                <section class="partners-grade">
                                    <div class="partners-status">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="avg star-box">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <span class="evaluation">
                                                    <span class="point"
                                                          style="font-size: 20px;">&nbsp;&nbsp;&nbsp;4.97</span>
                                                    <span class="evaluation" style="font-size: 13px; opacity: 0.6">/ 평가 대기</span>
                                                </span>
                                                </div>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="contract">
                                                    <span class="contract-project"
                                                          style="margin: 0 80px 0 0">계약한 프로젝트</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gun">건</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="portfolio">
                                                    <span class="portfolio" style="margin: 0 116px 0 0">포트폴리오</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gae">개</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                        </ul>
                                    </div>
                                    <div class="identity" style="text-align: right; font-size: 13px">
                                        <span class="certification" style="margin-right: 70px">
                                            <i class="fa fa-check-circle-o"></i>
                                            신원인증
                                        </span>
                                        <span class="contact">
                                            <i class="fa fa-check-circle-o"></i>
                                            연락처 등록
                                        </span>
                                    </div>

                                </section>

                            </section> <!-- search list -->
                            <section class="search-list bg-white" style="margin: 30px 0 0 220px">
                                <section class="partners-info">
                                    <div class="partners-image">
                                        <a class="coupang" href="https://www.coupang.com/">
                                            <img alt="팀프로젝트" class="team" src="/img/파트너.png"
                                                 style="height: 90px; width: 90px">
                                        </a>
                                    </div>
                                    <section class="partners-info1">
                                        <div class="info-head">
                                            <h4 class="username" style="color: skyblue; font-size: 20px">Tae hwa lee
                                                Team
                                                <span class="label label-sm" style="color: white;
                                            background-color: green; font-size: 13px; border-radius: 2px;">활동가능</span>
                                            </h4>
                                        </div>
                                        <section class="business-info">
                                            <span class="developer">
                                                <i class="fa fa-keyboard-o"></i>
                                                개발자&nbsp;&nbsp;&nbsp;
                                            </span>
                                            <hr class="tline">
                                            <span class="Corpor business">
                                                <i class="fa fa-building-o"></i>
                                                팀 프로젝트
                                            </span>
                                        </section>
                                        <section class="Explanation" style="font-size: 14px; opacity: 0.6">
                                            <p>반갑습니다 저희는 팀장 이태화의 진두지휘에 맞춰<br>
                                                열심히 프로젝트를 제작하는 이태화팀입니다.<br>
                                                홈페이지 제작을 위하여 밤낮 가리지않고 열심히 갈아 넣었습니다.<br>
                                                취업을 위해 모두가 열심히 하였으니 잘 봐주시기 바랍니다.<br>
                                                진행 가능한 시간상 여기까지가 최선이였습니다 감사합니다.</p>
                                        </section>
                                        <div class="engine">
                                        <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">JavaScript</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">WEB</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">HTML</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">APP</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">C++, C#</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Net,Asp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Jsp</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">los</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Php</span>
                                        </div>
                                        <div class="engine2">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Node.js</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Webrtc</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">red5pro</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Wowza</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">아이폰 앱 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">안드로이드 앱 개발</span>
                                        </div>
                                        <div class="engine3">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">윈도우 응용프로그램 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">웹사이트 개발</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">데이터베이스 설계 및 알고리즘 개발</span>
                                        </div>
                                        <div class="engine4">
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Objective-C</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Kotlin</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Flutter</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Html5</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Mysql</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Css</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Aws</span>
                                            <span class="label label-sm" style="color: #555555;
                                            background-color: #e5e7e8; font-size: 12px; border-radius: 2px;">Dart</span>
                                        </div>
                                    </section>
                                </section>

                                <section class="partners-grade">
                                    <div class="partners-status">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="avg star-box">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <img src="/img/star.svg"
                                                         style="width: 17px; height: 17px; margin-top: -5px">
                                                    <span class="evaluation">
                                                    <span class="point"
                                                          style="font-size: 20px;">&nbsp;&nbsp;&nbsp;4.97</span>
                                                    <span class="evaluation" style="font-size: 13px; opacity: 0.6">/ 평가 대기</span>
                                                </span>
                                                </div>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="contract">
                                                    <span class="contract-project"
                                                          style="margin: 0 80px 0 0">계약한 프로젝트</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gun">건</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                            <li>
                                                <span class="portfolio">
                                                    <span class="portfolio" style="margin: 0 116px 0 0">포트폴리오</span>
                                                    <span class="status-body">
                                                        1
                                                        <span class="gae">개</span>
                                                    </span>
                                                </span>
                                            </li>
                                            <hr class="evaluation-line">
                                        </ul>
                                    </div>
                                    <div class="identity" style="text-align: right; font-size: 13px">
                                        <span class="certification" style="margin-right: 70px">
                                            <i class="fa fa-check-circle-o"></i>
                                            신원인증
                                        </span>
                                        <span class="contact">
                                            <i class="fa fa-check-circle-o"></i>
                                            연락처 등록
                                        </span>
                                    </div>

                                </section>

                            </section> <!-- search list -->
                        </div>
                        <div class="row" style="margin: 3650px -200px 0 0">
                            <div class="col-12">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item disabled">
                                        <a href="#" class="page-link"><</a>
                                    </li>
                                    <li class="page-item active">
                                        <a class="page-link">1</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">2</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">3</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">4</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">5</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">6</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">7</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">8</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">9</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">10</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">></a>
                                    </li>
                                </ul>
                            </div>
                        </div> <!— page만들기 —>

                    </section>
                </div>
            </div>
        </div>
    </div>
</div>