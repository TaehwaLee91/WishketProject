<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- 필터부분 해야함 --%>
<%-- 필터부분 해야함 --%>
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
        min-height: 500px; min-width: 240px;
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
                                    <form id="filterFrm">
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
                                                     id="project_Resident" name="type" onclick="getProjectList()" type="checkbox" value="상주">
                                                <span>&nbsp;상주</span>
                                            </span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <form id="filterItem">
                                <div class="filter-category-box show-only-checkbox" id="categoryBox">
                                    <div class="filter-category-title body-2-medium" style="margin-top: -11px; font-weight: bold">프로젝트 카테고리</div>
                                    <div class="filter-item">
                                        <label class="checkbox-wishket">
                                        <span>
                                            <input class="wishket-checkbox theme-wishket" data-value="개발"
                                                   id="project_category" name="type" type="checkbox" value="개발" style="margin-top: 10px">
                                            <span style="cursor: pointer">&nbsp;개발</span>
                                        </span>
                                        </label>
                                    </div>
                                    <div class="filter-item" style="margin-top: -6px">
                                        <label class="checkbox-wishket">
                                        <span>
                                            <input class="wishket-checkbox theme-wishket" data-value="디자인"
                                                   id="project_design" name="type" type="checkbox" value="디자인">
                                            <span style="cursor: pointer">&nbsp;디자인</span>
                                        </span>
                                        </label>
                                    </div>
                                    <div class="filter-item" style="margin-top: -6px">
                                        <label class="checkbox-wishket">
                                        <span>
                                            <input class="wishket-checkbox theme-wishket" data-value="기획"
                                                   id="project_planning" name="type" type="checkbox" value="기획">
                                            <span style="cursor: pointer">&nbsp;기획</span>
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
                                                       data-value="웹" id="subcategory_web" name="area" type="checkbox" value="웹">
                                                <span style="cursor: pointer">&nbsp;웹</span>
                                            </span>
                                        </label>
                                    </div>
                                    <div class="filter-item" style="margin-top: -6px">
                                        <label class="checkbox-wishket">
                                            <span>
                                                <input class="wishket-checkbox theme-wishket subcategory-checkbox"
                                                       data-value="애플리케이션" id="subcategory_app" name="area" type="checkbox" value="애플리케이션">
                                                <span style="cursor: pointer">&nbsp;애플리케이션</span>
                                            </span>
                                        </label>
                                    </div>
                                    <div class="filter-item" style="margin-top: -6px">
                                        <label class="checkbox-wishket">
                                            <span>
                                                <input class="wishket-checkbox theme-wishket subcategory-checkbox"
                                                       data-value="커머스, 쇼핑몰" id="subcategory_commerce" name="area" type="checkbox" value="커머스,쇼핑몰">
                                                <span style="cursor: pointer">&nbsp;커머스,쇼핑몰</span>
                                            </span>
                                        </label>
                                    </div>
                                    <div class="filter-item" style="margin-top: -6px">
                                        <label class="checkbox-wishket">
                                            <span>
                                                <input class="wishket-checkbox theme-wishket subcategory-checkbox"
                                                       data-value="일반 소프트웨어" id="subcategory_software" name="area" type="checkbox" value="일반 소프트웨어">
                                                <span style="cursor: pointer">&nbsp;일반 소프트웨어</span>
                                            </span>
                                        </label>
                                    </div>
                                    <div class="text-center">
                                        <button type="button" class="btn btn-primary" style="width: 100px; margin-top: 30px" onclick="getFilter()">검색</button>
                                    </div>
                                </div>
                            </form>


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
                    <section class="result-list-wrap" id="resultListWrap">
                        <div class="project-list-wrap">
<%--                            <input id="projectTotalCount" type="hidden" value="31,129">--%>
<%--                            <input id="proejctSearchType" type="hidden" value="전체">--%>
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
                                               href="/project/board?pno=${pro.pno}">${pro.title}</a>
                                        </h5>
                                    </div>
                                    <div class="project-unit-body">
                                        <section class="project-unit-info row">
                                            <span class="estimated-box col-4" style="font-size: 15px">
                                                    <div class="estimated-data">
                                                        <img src="/img/icon-project-features.svg" style="margin-top: -5px">
                                                        <c:choose>
                                                            <c:when test="${pro.type eq '상주'}">
                                                                <c:choose>
                                                                    <c:when test="${fn: contains(pro.availableBudget, '*')}">
                                                                        <c:set var="rowArr" value="${fn: split(pro.availableBudget, '*')}"/>
                                                                        <fmt:parseNumber var="budget" integerOnly="true" value="0"/>
                                                                        <c:forEach var="row" items="${rowArr}">
                                                                            <c:set var="colArr" value="${fn: split(row, '/')}"/>
                                                                            <fmt:parseNumber var="budget" value="${budget + colArr[2]}"/>
                                                                        </c:forEach>
                                                                        &nbsp;예상 금액&nbsp;&nbsp;${budget} 원
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <c:set var="budgetArr" value="${fn: split(pro.availableBudget,'/')}"/>
                                                                        &nbsp;예상 금액&nbsp;&nbsp;${budgetArr[2]} 원
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:when>
                                                            <c:otherwise>
                                                                &nbsp;예상 금액&nbsp;&nbsp;${pro.availableBudget} 원
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div> <!-- 예상 금액 -->
                                                    <div class="estimated-data">
                                                        <img src="/img/icon-project-clock.png" style="margin-top: -5px; height: 25px; width: 15px">
                                                        &nbsp;예상 기간&nbsp;&nbsp;${pro.projectTerm} 일
                                                    </div> <!-- 예상 기간 -->
                                            </span> <!-- 예상 금액, 예상 기간 -->
                                            <span class="project-unit-category text-left col-5" style="font-size: 15px; border-left: 1px solid lightgray">
                                                <div style="opacity: 0.8">
                                                    <img src="/img/icon-project-category.png" style="height: 15px; width: 15px; margin-top: -3px">
                                                        &nbsp;${fn: replace(pro.category, '/', ' · ')}
                                                </div> <!-- 카테고리 -->
                                                <div style="opacity: 0.8">
                                                    <img src="/img/icon-project-subcategory.png" style="height: 15px; width: 15px; margin-top: -3px">
                                                        &nbsp;${fn: replace(pro.area, '/', ' · ')}
                                                </div> <!-- 분야 -->
                                            </span> <!-- 카테고리, 분야 -->
                                            <br>
                                            <div class="body-3 project-description row" style="margin-top: 15px">
                                                <p class="hide col-9" style="margin-left: 15px;">${pro.detailTask}</p>
                                            </div> <!-- 상세 내용 -->
                                            <div class="project-info-tag row col">
                                                <div class="simple-chip outsourcing-chip caption-1-medium" style="margin-left: 15px">
                                                    <span>${pro.type}</span><!-- 프로젝트 타입 -->
                                                    <span style="margin-left: 15px">
                                                        <img src="/img/icon-project-location.png" style="margin-top: 1px; height: 15px; width: 15px;">
                                                            ${pro.workPlace}
                                                    </span><!-- 근무 위치 -->
                                                    <span style="opacity: 0.5; margin-left: 15px">등록 일자 ${pro.regdate}</span> <!-- 등록 일자 -->
                                                </div> <!-- 프로젝트 타입, 근무 위치, 등록일자-->
                                            </div>
                                        </section> <!-- 카드 왼쪽 내용 -->
                                    </div>
                                    <section class="project-unit-status" style="text-align: right; margin-top: -110px;">
                                        <div class="application-status-box">
                                            <div class="application-status">
                                                <img src="/img/icon-project-deadline-clock.png" style="height: 30px" width="30px">
                                                <span class="deadline-date body-2 text600" style="font-size: 14px">
                                                    마감
                                                     <c:set var="deadLineStr" value="${fn: substring(pro.deadLine, 0, 10)}"/>
                                                    <fmt:parseDate var="deadLineDate" value="${deadLineStr}" pattern="yyyy-MM-dd"/>
                                                    <fmt:formatDate value="${deadLineDate}" pattern="yyyy-MM-dd"></fmt:formatDate>
                                                    <c:set var="today" value="<%=new java.util.Date()%>"/>
                                                    <fmt:parseNumber var="strDate" value="${deadLineDate.time / (1000*60*60*24)}" integerOnly="true"/>
                                                    <fmt:parseNumber var="endDate" value="${today.time / (1000*60*60*24)}" integerOnly="true"/>
                                                    <strong>${endDate - strDate}일 전</strong>
                                                </span> <!-- 마감일 -->
                                            </div>
                                            <div class="application-status">
                                                <img src="/img/icon-project-applicant.png" style="height:30px; width:30px; margin-left: 17px" >
                                                <span class="deadline-date body-2 text600" style="font-size: 14px; margin-left: 17px">
                                                    총<strong>13명</strong> 지원
                                                </span> <!-- 지원자 수-->
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
                                        </div> <!-- 우측 하단 뷰, 하트-->
                                    </section><!-- 카드 오른쪽 내용 -->
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
    function getFilter(){
        var filterFrm = document.getElementById('filterFrm');
        filterFrm.setAttribute('action', '/project/list/filter');
        filterFrm.setAttribute('method', 'post');
        filterFrm.submit();
    }
</script>

