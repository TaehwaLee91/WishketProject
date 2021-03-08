<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
    body {
        margin: 0;
        padding: 0;
    }
    ul {
        list-style: none;
        padding: 0;
    }
    #aside {
        float: left;
        margin-top: 30px;
        background-color: white;
    }
    #aside {
        width: 200px;
        border: 1px solid #f5c6cb;
        min-height: 3050px; min-width: 240px;
        padding-left: 20px
    }
    .search-list {
        margin-top: 30px;
        width: 70%;
        text-align: left;
        float: left;
        padding: 30px;
        height: 3050px;
        width: 870px;
        border: 1px solid #f5c6cb;
    }
    footer { padding: 10px;
        width: 100%;
        text-align: center;}

    .hr1 {
        border-left: 1px solid #f5c6cb;
        height: 50px;
        position: absolute;
        left: 50%;
        margin: -70px 0px 0px -80px;
    }
    .caption-1-high { font-size: 12px; margin: 0 60px 0 5px}
    .line-style { height: 50px; width: 868px; margin-left: -30px;  }
    .small-line { border-left: 1px solid #f5c6cb;
        height: 15px;
        position: absolute;
        left: 50%;
        margin: 1px 0px 0px -215px; }
    .small-line-1 { border-left: 1px solid #f5c6cb;
        height: 15px;
        position: absolute;
        left: 54%;
        margin: 1px 0px 0px -205px; }
    .small-line-2 { border-left: 1px solid #f5c6cb;
        height: 15px;
        position: absolute;
        left: 64%;
        margin: 1px 0 0 -230px; }
    .short-line {   height: 0px; width: 165px; margin-right: -30px; }
    .iconi {
        height: 18px;
        width: 18px;
        margin-top: -4px;
    }
    .order-radio {
        height: 10px;
        width: 10px;
    }
    .only-selected-checkbox {
        height: 16px;
        width: 16px;
    }
    .caption-1-medium {
        font-size: 13px
    }
    input:focus { outline: 2px solid #7abaff; }
    .hide {
        font-size: 13px;
        /*display: inline-block;*/
        display: -webkit-box;
        width: 80.5%;
        white-space: normal; overflow: hidden;
        opacity: 0.7;
        word-wrap: break-word;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        line-height: 20px;
    }

    #loading {
        width: 50%;
        height: 50%;
        top: 0;
        left: 0;
        position: fixed;
        display: block;
        opacity: 0.8;
        background: white;
        z-index: 99;
        text-align: center;
    }

    #loading > img {
        position: absolute;
        top: 50%;
        left: 50%;
        z-index: 100;
    }

    @-webkit-keyframes spin {
        0% { -webkit-transform: rotate(0deg); }
        100% { -webkit-transform: rotate(360deg); }
    }

    @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }
</style>

<fmt:parseNumber var="cp" value="${param.cp}" />
<fmt:parseNumber var="pp" value="10" />
<fmt:parseNumber var="pscnt" value="${pscnt}" />

<fmt:parseNumber var="sp" integerOnly="true" value="${((cp-1) / pp)}"/>
<fmt:parseNumber var="sp" value="${(sp * 10) + 1}"/>
<fmt:parseNumber var="ep" value="${(sp + 9)}"/>

<fmt:parseNumber var="tp" value="${pscnt / pp}" integerOnly="true"/>
<c:if test="${(pscnt % pp) > 0}">
    <fmt:parseNumber var="tp" value="${tp + 1}" />
</c:if>

<fmt:parseNumber var="snum" integerOnly="true"
                 value="${pscnt - (cp - 1) * pp}"/>

<c:set var="navlink" value="/project/board?cp="/>
<div class="main">
    <div class="row">
        <a href="https://www.wishket.com/news-center/detail/261/">
            <img src="/img/견적%20문의_20190429_102807.png"
                 style="height: 85px" width="100%"
                 alt="" onclick="clickBtn();"/></a>
    </div>
    <div class="container project-list-view" style="margin-top: -20px">
        <form id="searchProjectListForm" onsubmit="return false;">
            <div class="search-header">
                <h4 style="font-weight: bold; margin-top: 50px">
                    <div class="page-title subtitle-1-medium" style="position: relative; bottom: -20px">프로젝트 찾기</div>
                </h4>
                <div class="text-search-box" style="text-align: right; margin-top: -25px">
                    <select id="searching" name="searching"
                            class="form-control-sm col-1.4 border-primary btn btn-primary"
                            style="background-color: #fdfdfe; color: black">
                        <option>검색 옵션</option>
                        <option value="all" selected="selected">전체</option>
                        <option value="title">제목</option>
                        <option value="skill_slug">관련기술</option>
                        <option value="description">프로젝트 내용</option>
                    </select>
                    <input type="text" class="form-control-sm col-4 border-primary btn btn-primary"
                           name="search_text" data-input-type="text-input"
                           style="cursor:auto;outline-style: unset; background-color: #fdfdfe; color: black; text-align: left">
                    <button type="button" class="btn btn-primary" onclick="getProjectList()">검색</button>
                </div>
            </div> <!-- search-header -->

            <div id="aside">
                <div class="search-body">
                    <section class="filter-side-bar-wrapper">
                        <section class="filter-sidebar">
                            <div class="category-box simple-checkbox">
                                <br><br>
                                <div class="category-title body-2-medium" style="margin-top: -20px; font-weight: bold">
                                    프로젝트 진행 방식&nbsp;
                                    <img class="iconi" src="/img/tab-icon-tooltip.png"
                                         title="외주(도급) 프로젝트
프로젝트 단위로 금액을 지급받고 원하는 장소에서 프로젝트를
진행합니다.

상주 프로젝트
월 단위로 금액을 지급받고 클라이언트가 요청한 장소에서
프로젝트를 진행합니다">
                                </div>
                                <div class="filter-detail-checkbox" style="margin-top: 10px;">
                                    <div class="filter-item">
                                        <label class="checkbox-wishket">
                                    <span style="cursor: pointer">
                                        <input class="wishket-checkbox theme-wishket" data-value="외주(도급)"
                                               id="project_outSourcing" name="type"
                                               onclick="getProjectList()" type="checkbox" value="외주(도급)">
                                        <span>&nbsp;외주(도급)</span>
                                    </span>
                                        </label>
                                    </div>
                                    <div class="filter-item" style="margin-top: -5px">
                                        <label class="checkbox-wishket">
                                    <span style="cursor: pointer">
                                        <input class="wishket-checkbox theme-wishket" data-value="상주"
                                               id="project_Resident" name="type"
                                               onclick="getProjectList()" type="checkbox" value="상주">
                                        <span>&nbsp;상주</span>
                                    </span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="filter-category-box show-only-checkbox" id="categoryBox">
                                <div class="filter-category-title body-2-medium" style="margin-top: -11px; font-weight: bold">프로젝트 카테고리</div>
                                <div class="filter-item">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket" data-value="개발"
                                               id="project_category" name="category"
                                               onclick="getProjectList();" type="checkbox" value="develop"
                                               style="margin-top: 10px">
                                        <span style="cursor: pointer">&nbsp;개발</span>
                                    </span>
                                    </label>
                                </div>
                                <div class="filter-item" style="margin-top: -6px">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket" data-value="디자인"
                                               id="project_design" name="category"
                                               onclick="getProjectList();" type="checkbox" value="develop">
                                        <span style="cursor: pointer">&nbsp;디자인</span>
                                    </span>
                                    </label>
                                </div>
                                <div class="filter-item" style="margin-top: -6px">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket" data-value="기획"
                                               id="project_planning" name="category"
                                               onclick="getProjectList();" type="checkbox" value="develop">
                                        <span style="cursor: pointer">&nbsp;기획</span>
                                    </span>
                                    </label>
                                </div>
                                <div class="show-only-seleted">
                                    <input class="only-selected-checkbox" data-value="선택한 카테고리만 보기"
                                           id="selected_category"
                                           name="selected_category" type="image"
                                           src="/img/input-roundcheckbox-unselected.png"
                                           value="only_selected_category"
                                           style="opacity: 0.7">
                                    <label class="only-selected-label" for="selected_category">
                                        <span class="catpion-1 only-selected-description unselected"
                                              style="opacity: 0.7; font-size: 13px; cursor: pointer">선택한 카테고리만 보기
                                        </span>
                                    </label>
                                </div>
                            </div>
                            <br>
                            <div class="filter-detail-checkbox body-3" id="subcategory">
                                <div class="filter-item" style="margin-top: -11px; font-weight: bold">프로젝트 분야</div>
                                <div class="filter-item" style="margin-top: 8px">
                                    <label class="checkbox-wishket">
                                <span>
                                        <input class="wishket-checkbox theme-wishket subcategory-checkbox"
                                               data-value="웹"
                                               id="subcategory_web" name="subcategory_web"
                                               onclick="getProjectList();" type="checkbox" value="web">
                                        <span style="cursor: pointer">&nbsp;웹</span>
                                    </span>
                                    </label>
                                </div>
                                <div class="filter-item" style="margin-top: -6px">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket subcategory-checkbox"
                                               data-value="애플리케이션"
                                               id="subcategory_app" name="subcategory_app"
                                               onclick="getProjectList();" type="checkbox" value="application">
                                        <span style="cursor: pointer">&nbsp;애플리케이션</span>
                                    </span>
                                    </label>
                                </div>
                                <div class="filter-item" style="margin-top: -6px">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket subcategory-checkbox"
                                               data-value="커머스, 쇼핑몰"
                                               id="subcategory_commerce" name="subcategory_commerce"
                                               onclick="getProjectList();" type="checkbox" value="commerce">
                                        <span style="cursor: pointer">&nbsp;커머스, 쇼핑몰</span>
                                    </span>
                                    </label>
                                </div>
                                <div class="filter-item" style="margin-top: -6px">
                                    <label class="checkbox-wishket">
                                    <span>
                                        <input class="wishket-checkbox theme-wishket subcategory-checkbox"
                                               data-value="일반 소프트웨어"
                                               id="subcategory_software" name="subcategory_software"
                                               onclick="getProjectList();" type="checkbox" value="software">
                                        <span style="cursor: pointer">&nbsp;일반 소프트웨어</span>
                                    </span>
                                    </label>
                                </div>
                            </div>
                            <div class="show-only-seleted">
                                <input class="only-selected-checkbox" data-value="선택한 분야만 보기" id="onlySelectedFiled"
                                       name="onlySelectedFiled" type="image"
                                       src="/img/input-roundcheckbox-unselected.png"
                                       value="onlySelectedFiled"
                                       style="opacity: 0.7">
                                <label class="only-selected-label" for="selected_category">
                                        <span class="catpion-1 only-selected-description unselected"
                                              style="opacity: 0.7; cursor: pointer">&nbsp;선택한 분야만 보기</span>
                                </label>
                            </div>
                            <br>
                            <div class="filter-category-box writing-select-box" >
                                <div class="filter-category-title body-2-medium" style="margin-top: -11px; font-weight: bold">프로젝트 예상 금액</div>
                                <div class="form-group row" style="margin-top: 10px">
                                    <select id="sel" name="sel" class="form-control col-8 border-danger"
                                            style="margin-left: 15px; cursor: pointer">
                                        <option value selected="selected">금액선택</option>
                                        <option value="1,000,000">100만 원</option>
                                        <option value="2,000,000">200만 원</option>
                                        <option value="3,000,000">300만 원</option>
                                        <option value="4,000,000">400만 원</option>
                                        <option value="5,000,000">500만 원</option>
                                        <option value="6,000,000">600만 원</option>
                                        <option value="7,000,000">700만 원</option>
                                        <option value="8,000,000">800만 원</option>
                                        <option value="9,000,000">900만 원</option>
                                        <option value="10,000,000">1,000만 원</option>
                                        <option value="20,000,000">2,000만 원</option>
                                        <option value="30,000,000">3,000만 원</option>
                                        <option value="40,000,000">4,000만 원</option>
                                        <option value="50,000,000">5,000만 원</option>
                                        <option value="60,000,000">6,000만 원</option>
                                        <option value="70,000,000">7,000만 원</option>
                                        <option value="80,000,000">8,000만 원</option>
                                        <option value="90,000,000">9,000만 원</option>
                                        <option value="100,000,000">10,000만 원</option>
                                        <option value="500,000,000">50,000만 원</option>
                                    </select>
                                    <p style="font-size: 15px; margin-top: 10px">&nbsp;이상</p>
                                </div>
                                <div class="form-group row">
                                    <select id="sel2" name="sel" class="form-control col-8 border-danger"
                                            style="margin:-20px 0px 0px 15px; cursor: pointer">
                                        <option value selected="selected">금액선택</option>
                                        <option value="1,000,000">100만 원</option>
                                        <option value="2,000,000">200만 원</option>
                                        <option value="3,000,000">300만 원</option>
                                        <option value="4,000,000">400만 원</option>
                                        <option value="5,000,000">500만 원</option>
                                        <option value="6,000,000">600만 원</option>
                                        <option value="7,000,000">700만 원</option>
                                        <option value="8,000,000">800만 원</option>
                                        <option value="9,000,000">900만 원</option>
                                        <option value="10,000,000">1,000만 원</option>
                                        <option value="20,000,000">2,000만 원</option>
                                        <option value="30,000,000">3,000만 원</option>
                                        <option value="40,000,000">4,000만 원</option>
                                        <option value="50,000,000">5,000만 원</option>
                                        <option value="60,000,000">6,000만 원</option>
                                        <option value="70,000,000">7,000만 원</option>
                                        <option value="80,000,000">8,000만 원</option>
                                        <option value="90,000,000">9,000만 원</option>
                                        <option value="100,000,000">10,000만 원</option>
                                        <option value="500,000,000">50,000만 원</option>
                                    </select>
                                    <p style="font-size: 15px; margin-top: -10px">&nbsp;이하</p>
                                </div>

                                <div class="setting-box caption-1">
                                    <div class="hand-writing-box" style="margin-top: -20px">
                                        <label class="checkbox-wishket" style="margin-top: 10px">
                                 <span>
                                     <input class="wishket-checkbox theme-wishket caption-1 hand-writing"
                                            data-unit-text="원" id="budgetHandWriting" name="budgetHandWriting"
                                            type="checkbox">
                                     <span style="cursor: pointer">직접 입력</span>
                                 </span>
                                        </label>

                                        <button class="btn reset-btn caption-2" id="resetBudget"
                                                style="margin-top: -5px; font-size: 13px; color: #3ba3c7"><img
                                                src="/img/chip-btn-refresh.svg" style="color: #3ba3c7"/>
                                            금액초기화
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="filter-category-box writing-select-box">
                                <div class="filter-category-title body-2-medium" style="margin-top: -11px; font-weight: bold">프로젝트 예상 기간</div>
                                <div class="form-group row" style="margin-top: 10px">
                                    <select id="prjdate" name="prjdate" class="form-control col-8 border-danger"
                                            style="margin-left: 15px; cursor: pointer">
                                        <option value selected="selected">기간 선택</option>
                                        <option value="7">7일</option>
                                        <option value="15">15일</option>
                                        <option value="30">30일</option>
                                        <option value="60">60일</option>
                                        <option value="90">90일</option>
                                        <option value="180">180일</option>
                                        <option value="365">365일</option>
                                    </select>
                                    <p style="font-size: 15px; margin-top: 10px">&nbsp;이상</p>
                                </div>
                                <div class="form-group row">
                                    <select id="prjdate2" name="prjdate2" class="form-control col-8 border-danger"
                                            style="margin:-20px 0px 0px 15px; cursor: pointer">
                                        <option value selected="selected">기간 선택</option>
                                        <option value="7">7일</option>
                                        <option value="15">15일</option>
                                        <option value="30">30일</option>
                                        <option value="60">60일</option>
                                        <option value="90">90일</option>
                                        <option value="180">180일</option>
                                        <option value="365">365일</option>
                                    </select>
                                    <p style="font-size: 15px; margin-top: -10px">&nbsp;이하</p>
                                </div>

                                <div class="setting-box caption-2">
                                    <div class="hand-writing-box" style="margin-top: -20px">
                                        <label class="checkbox-wishket" style="margin-top: 10px">
                                 <span>
                                     <input class="wishket-checkbox theme-wishket caption-2 hand-writing"
                                            data-unit-text="원" id="budgetHandWriting2" name="budgetHandWriting2"
                                            type="checkbox">
                                     <span style="cursor: pointer">직접 입력</span>
                                 </span>
                                        </label>

                                        <button class="btn reset-btn caption-2" id="resetBudget2"
                                                style="margin-top: -5px; font-size: 13px; color: #3ba3c7"><img
                                                src="/img/chip-btn-refresh.svg" style="color: #3ba3c7"/>
                                            기간초기화
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="filter-category-box writing-select-box">
                                <div class="filter-category-title body-2-medium" style="margin-top: -11px; font-weight: bold">상주 프로젝트 월 단위 금액</div>
                                <div class="form-group row" style="margin-top: 10px">
                                    <select id="prjmonthm" name="prjmonthm" class="form-control col-8 border-danger"
                                            style="margin-left: 15px; cursor: pointer">
                                        <option value selected="selected">금액 선택</option>
                                        <option value="1,000,000">월 100만 원</option>
                                        <option value="2,000,000">월 200만 원</option>
                                        <option value="3,000,000">월 300만 원</option>
                                        <option value="4,000,000">월 400만 원</option>
                                        <option value="5,000,000">월 500만 원</option>
                                        <option value="6,000,000">월 600만 원</option>
                                        <option value="7,000,000">월 700만 원</option>
                                        <option value="8,000,000">월 800만 원</option>
                                        <option value="9,000,000">월 900만 원</option>
                                        <option value="10,000,000">월 1,000만 원</option>
                                        <option value="50,000,000">월 5,000만 원</option>
                                    </select>
                                    <p style="font-size: 15px; margin-top: 10px">&nbsp;이상</p>
                                </div>
                                <div class="form-group row">
                                    <select id="prjmonthm2" name="prjmonthm2"
                                            class="form-control col-8 border-danger"
                                            style="margin:-20px 0px 0px 15px; cursor: pointer">
                                        <option value selected="selected">금액 선택</option>
                                        <option value="1,000,000">월 100만 원</option>
                                        <option value="2,000,000">월 200만 원</option>
                                        <option value="3,000,000">월 300만 원</option>
                                        <option value="4,000,000">월 400만 원</option>
                                        <option value="5,000,000">월 500만 원</option>
                                        <option value="6,000,000">월 600만 원</option>
                                        <option value="7,000,000">월 700만 원</option>
                                        <option value="8,000,000">월 800만 원</option>
                                        <option value="9,000,000">월 900만 원</option>
                                        <option value="10,000,000">월 1,000만 원</option>
                                        <option value="50,000,000">월 5,000만 원</option>
                                    </select>
                                    <p class="caption-1 up-down" style="font-size: 15px; margin-top: -10px">
                                        &nbsp;이하</p>
                                </div>
                                <div class="setting-box caption-2">
                                    <div class="hand-writing-box" style="margin-top: -20px">
                                        <label class="checkbox-wishket" style="margin-top: 10px">
                                 <span>
                                     <input class="wishket-checkbox theme-wishket caption-1 hand-writing"
                                            data-unit-text="원" id="budgetHandWriting3" name="budgetHandWriting3"
                                            type="checkbox">
                                     <span style="cursor: pointer">직접 입력</span>
                                 </span>
                                        </label>

                                        <button class="btn reset-btn caption-2" id="resetBudget4"
                                                style="margin-top: -5px; font-size: 13px; color: #3ba3c7">
                                            <img src="/img/chip-btn-refresh.svg" style="color: #3ba3c7"/>
                                            금액초기화
                                        </button>
                                    </div>
                                </div>
                                <!--<div class="filter-detail-input-box small-box" id="inhouseBudgetWritingBox">
                                    <div class="filter-item"><input autocomplete="off"
                                                                    class="theme-wishket wishket-budget project-budget-input body-3"
                                                                    name="inhouse_project_min_budget" placeholder="금액 입력"
                                                                    type="text"/>
                                        <p class="caption-1 up-down">원/월~</p></div>
                                    <div class="filter-item inline-filter-item"><input autocomplete="off"
                                                                                       class="theme-wishket wishket-budget project-budget-input body-3"
                                                                                       name="inhouse_project_max_budget"
                                                                                       placeholder="금액 입력" type="text"/>
                                        <p class="caption-1 up-down">원/월</p></div>
                                    <button class="btn btn-wishket caption-1 btn-filter-submit">적용</button>
                                </div>
                                <div class="setting-box caption-2">
                                    <div class="hand-writing-box" style="margin-top: -20px">
                                     <input class="wishket-checkbox theme-wishket caption-1 hand-writing"
                                            data-unit-text="원/월" id="budgetHandWriting3" name="budgetHandWriting3"
                                            type="checkbox"> onclick이벤트 추가예정.
                                     <label onclick="direct()">직접 입력</label>
                                        <div class="reset-box">
                                        <button class="btn reset-btn caption-2" id="resetBudget2"
                                                style="margin-top: -5px; font-size: 13px"><img src="/img/chip-btn-refresh.svg"/>
                                            금액초기화
                                        </button>
                                        </div>
                                    </div>
                                </div>-->
                            </div>
                            <br>
                            <div class="filter-category-box simple-checkbox">
                                <div class="filter-category-title body-2-medium" style="margin-top: -11px; font-weight: bold">검증된 클라이언트</div>
                                <div class="filter-detail-checkbox" style="margin-top: 8px">
                                    <div class="filter-item">
                                        <div class="input-wrap client-pro-box">
                                            <label class="checkbox-wishket">
                                 <span>
                                     <input class="wishket-checkbox theme-wishket" data-value="평가 우수"
                                            id="clientPro" name="clientPro"
                                            type="checkbox" value="pro" style="margin-top: 10px">
                                     <span style="cursor: pointer">평가 우수<img src="/img/icon-badge-client-pro.png" width="20px"
                                                                             height="20px"/></span>
                                 </span>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="filter-item">
                                        <div class="input-wrap client-verified-box">
                                            <label class="checkbox-wishket">
                                 <span>
                                     <input class="wishket-checkbox theme-wishket" data-value="인증 완료"
                                            id="clientVerified" name="clientVerified"
                                            type="checkbox" value="pro" style="margin-top: 2px">
                                     <span style="cursor: pointer">인증 완료<img src="/img/icon-badge-verification.png" width="20px"
                                                                             height="20px"/></span>
                                 </span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="filter-category-box simple-checkbox">
                                <div class="filter-category-title body-2-medium" style="margin-top: -11px; font-weight: bold">클라이언트/근무 위치</div>
                                <div class="filter-detail-checkbox body-3" id="filterLocation"></div>
                                <button class="btn reset-btn caption-2" id="location"
                                        style="margin-top: 8px; font-size: 13px"><img
                                        src="/img/input-plusbox-selected-w.png" style="margin-top: -5px" height="17px"
                                        width="17px"/>
                                    위치 추가하기
                                </button> <!-- 위치 추가하기 모달창 --> <!-- 추후 추가 -->
                            </div> <!-- 클라이언트 위치/근무 -->
                            <br>
                            <div class="filter-category-box simple-checkbox">
                                <div class="filter-category-title body-2-medium" style="margin-top: -11px; font-weight: bold">지원자 모집 상태</div>
                                <div class="filter-detail-checkbox">
                                    <div class="filter-item">
                                        <label class="checkbox-wishket" style="margin-top: 8px">
                                            <input class="wishket-checkbox theme-wishket"
                                                   data-value="모집 마감 프로젝트 숨기기"
                                                   id="hide_project" name="hide_project" type="checkbox"
                                                   value="hide_project">
                                            <label class="hide2" style="font-size: 13px; cursor: pointer">모집 마감 프로젝트 숨기기</label>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </section> <!-- sidebar -->
                    </section>
                </div> <!-- search-body -->
            </div> <!-- aside -->

            <div id="article">
                <section class="search-list bg-white">
                    <section class="result-header-wrap" style="margin-top: -30px;">
                        <div class="result-header">
                            <div class="count-box">
                                <br>
                                <span class="body-1-medium count-title" style="font-weight: bold">${pscnt}개의 프로젝트</span>
                                <span class="caption-1" id="resultCount" style="display: none;"></span>
                            </div>
                            <div class="selected-filter-chip-box" id="selectedChipBox" style="display: none;">
                                <p class="caption-1 selected-filter-title">선택한 필터 :</p>
                                <div class="selected-filter-list">
                                    <button class="selected-filter-clear" id="chipResetButton"
                                            onclick="resetFilter()">
                                        <img id="chipResetIcon" src="/img/chip-btn-refresh.svg"/>
                                        <span class="caption-1" id="chipResetText">초기화</span>
                                    </button>
                                </div>
                            </div>
                            <div class="result-order-box bg-light">
                                <div class="order-radio-wrap" style="margin-top: 13px">
                                    <form name="" method="" action="">
                                        <input checked="" class="order-radio" id="orderByDefault"
                                               name="order_by" type="image"
                                               src="/img/check-inactive.png" value="default"/>
                                        <label class="caption-1-medium order-text" for="orderByDefault">기본 정렬 순&nbsp;</label>
                                        <input class="order-radio" id="orderByHighPrice" name="order_by"
                                               type="image" src="/img/check-inactive.png"
                                               value="price"/>
                                        <label class="caption-1-medium order-text" for="orderByHighPrice">금액 높은
                                            순&nbsp;</label>
                                        <input class="order-radio" id="orderByLowApplicant" name="order_by"
                                               type="image" src="/img/check-inactive.png"
                                               value="applicant"/>
                                        <label class="caption-1-medium order-text" for="orderByHighPrice">지원 적은
                                            순&nbsp;</label>
                                        <input class="order-radio" id="orderBySubmit" name="order_by"
                                               type="image" src="/img/check-inactive.png"
                                               value="submit"/>
                                        <label class="caption-1-medium order-text" for="orderBySubmit">최신 등록 순&nbsp;</label>
                                        <input class="order-radio" id="orderByClose" name="order_by"
                                               type="image" src="/img/check-inactive.png"
                                               value="close"/>
                                        <label class="caption-1-medium order-text" for="orderByClose">마감 임박 순</label>
                                    </form>
                                </div>
                            </div> <!-- result orderbox -->
                        </div>
                    </section>  <!-- result header wrap -->
                    <%-- <section class="result-list-wrap" id="loadingpage">
                         <div id="loadingWrap">
                             <img alt="loading" id="loading" src="/img/spinner-loading.gif"/>
                         </div>
                         <form action="next" method="post" id="next">
                             <input type="hidden" value="test" name="test">
                             <input type="submit" value="submit">
                         </form>
                     </section> <!-- 화면 로딩시 -->--%>
                    <section class="result-list-wrap" id="resultListWrap">
                        <div class="project-list-wrap">
                            <input id="projectTotalCount" type="hidden" value="31,129">
                            <input id="proejctSearchType" type="hidden" value="전체">
                            <div class="project-list-box">
                                <c:forEach var="pro" items="${ps}">
                                <div class="project-info-box">
                                    <hr class="line-style">
                                    <div class="project-status-label recruiting-status">
                                        <div class="status-mark recruting-mark;" style="background: green; height: 21px; width: 58px; margin-top: -40px; font-size: 13px; color: white; font-weight: bold">&nbsp;&nbsp;모집 중</div>
                                    </div>
                                    <br>
                                    <div class="project-unit-heading">
                                        <h5 class="project-title" style="margin-top: -13px">
                                            <a class="subtitle-2-medium project-link" style="color: black; font-weight: bold"
                                               href="#">${pro.title}</a>
                                        </h5>
                                    </div>
                                    <div class="project-unit-body">
                                        <section class="project-unit-info row">
                                            <span class="estimated-box col-4" style="font-size: 15px">
                                                    <div class="estimated-data">
                                                        <img src="/img/icon-project-features.svg" style="margin-top: -5px">
                                                            &nbsp;예상 금액&nbsp;&nbsp;${pro.availableBudget} 원
                                                        <c:choose>
                                                            <c:when test="${pro.type eq 상주}">
                                                                ${fn: split(pro.availableBudget, "*")}
                                                            </c:when>
                                                        </c:choose>
<%--                                                            <c:choose>--%>
<%--                                                                <c:when test="${fn: contains(pro.availableBudget, ',')}">${pro.availableBudget} 원</c:when>--%>
<%--                                                                <c:otherwise><fmt:formatNumber value="${pro.availableBudget}" pattern="#,###"/> 원</c:otherwise>--%>
<%--                                                            </c:choose>--%>

                                                    </div>
                                                    <div class="estimated-data">
                                                        <img src="/img/icon-project-clock.png" style="margin-top: -5px; height: 25px; width: 15px">
                                                        &nbsp;예상 기간&nbsp;&nbsp;${pro.projectTerm} 일</div>
                                            </span>
                                            <span class="project-unit-category text-left col-5" style="font-size: 15px; border-left: 1px solid lightgray">
                                                <div style="opacity: 0.8">
                                                    <img src="/img/icon-project-category.png" style="height: 15px; width: 15px; margin-top: -3px";>
                                                        &nbsp;${fn: replace(pro.category, '/', ' · ')}
                                                </div>
                                                <div style="opacity: 0.8">
                                                    <img src="/img/icon-project-subcategory.png" style="height: 15px; width: 15px; margin-top: -3px">
                                                        &nbsp;${fn: replace(pro.area, '/', ' · ')}
                                                </div>
                                            </span>
                                            <br>
                                            <div class="body-3 project-description row" style="margin-top: 15px">
                                                <p class="hide col-9" style="margin-left: 15px;">${pro.detailTask}</p>
                                            </div>
                                            <div class="project-info-tag row col">
                                                <div class="simple-chip outsourcing-chip caption-1-medium" style="margin-left: 15px">
                                                    <span>${pro.type}</span>
                                                    <span style="margin-left: 15px">
                                                        <img src="/img/icon-project-location.png" style="margin-top: 1px; height: 15px; width: 15px;">${pro.workPlace}
                                                    </span>
                                                    <span style="opacity: 0.5; margin-left: 15px">
                                                         등록 일자 ${pro.regdate}
                                                    </span>
                                                </div>
                                            </div>
                                        </section>
                                    </div>
                                    <section class="project-unit-status" style="text-align: right; margin-top: -110px;">
                                        <div class="application-status-box">
                                            <div class="application-status">
                                                <img src="/img/icon-project-deadline-clock.png" style="height: 30px" width="30px">
                                                <span class="deadline-date body-2 text600" style="font-size: 14px">
                                                    마감
                                                    <strong>${fn: substring(pro.deadLine, 0, 10)}일 전</strong>
                                                </span>
                                            </div>
                                            <div class="application-status">
                                                <img src="/img/icon-project-applicant.png" style="height:30px; width:30px; margin-left: 17px" >
                                                <span class="deadline-date body-2 text600" style="font-size: 14px; margin-left: 17px">
                                                    총
                                                    <strong>13명</strong> 지원
                                                </span>
                                            </div>
                                        </div>
                                        <hr class="short-line">
                                        <div class="interest-status-box" style="margin: -9px -48px">
                                            <span class="status-wrap-icon" style="cursor: pointer; margin-right: -95px; "title="조회수가 아주 높은 프로젝트입니다.">
                                                <img src="/img/post-icon-view.png"
                                                     style="width: 15px; height: 15px; margin-right: -5px">
                                                <span class="caption-1-high text500">아주 높음</span>
                                            </span>
                                            <span class="heart" style="cursor: pointer; margin-left: 50px "  title="14명의 파트너가 관심 프로젝트로 추가했습니다.">
                                                <img src="/img/btn-icon-like-s-off.png"
                                                     style="width: 15px; height: 15px; margin-right: -5px">
                                                <span class="caption-1-high text500">14</span>
                                            </span>
                                        </div>
                                    </section>
                                </div>
                                </c:forEach>
                                <hr class="line-style">
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <ul class="pagination justify-content-center">
                                        <%-- '이전'이 표시되어야 할때는 cp > 10 --%>
                                        <li class="page-item <c:if test="${sp le 10}">disabled</c:if>">
                                            <a href="${navlink}${sp-10}" class="page-link">이전</a>
                                        </li>

                                        <c:forEach var="i" begin="${sp}" end="${ep}" step="1">
                                            <c:if test="${i le tp}">
                                                <c:if test="${i ne cp}">
                                                    <li class="page-item">
                                                        <a href="${navlink}${i}" class="page-link font-weight-bold">${i}</a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${i eq cp}">
                                                    <li class="page-item active">
                                                        <a href="${navlink}${i}" class="page-link font-weight-bold">${i}</a>
                                                    </li>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>

                                        <%-- '다음'이 표시되어야 할때는? --%>
                                        <li class="page-item <c:if test="${ep gt tp}">disabled</c:if>">
                                            <a href="${navlink}${sp + 10}" class="page-link">다음</a>
                                        </li>
                                    </ul>
                                </div>
                            </div><!-- 페이지네이션 -->
                        </div> <!-- project-list-wrap -->
                    </section> <!-- result-list-wrap -->
                </section> <!-- search list -->
            </div> <!-- section -->

        </form>
    </div> <!-- container-list-view -->
</div><!-- main -->
<script type="text/javascript">

</script>

