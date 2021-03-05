<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />

<link rel="stylesheet" href="/css/newProject.css">

<style>
    .partnerRow {
        margin-left: 5px; padding:5px 5px;
    }
    .partnerRow > input {
        margin-left: 19px
    }
</style>
<div id="main" class="bg-light">
    <div class="container">
        <div class="row container-row">
            <div class="col-3">
                <div class="status-main-menu-header">
                    <a href="#" class="backBtn">
                        <img class="img-item" src="/img/btn_icon_back_s.png"/>
                        <p>나가기</p>
                    </a>
                    <p class="page-title">프로젝트 등록</p>
                </div>
                <div class="status-main-menu">
                    <p><b>프로젝트 정보 등록</b></p>
                    <div class="status-sub-menu">
                        <p class="status-sub-menu-title">
                            1. 기본 정보<img class="status-mark" src="/img/tab_icon_check_on_c.png" style="float: right">
                        </p>
                        <p class="status-sub-menu-title">
                            2. 준비 상태<img class="status-mark" src="/img/tab_icon_check_on_c.png" style="float: right">
                        </p>
                        <p class="status-sub-menu-title">
                            3. 프로젝트 상세<img class="status-mark" src="/img/tab_icon_check_on_c.png" style="float: right">
                        </p>
                        <p class="status-sub-menu-title sub-menu-active">
                            4. 예산 및 일정
                        </p>
                        <p class="status-sub-menu-title">
                            5. 미팅 및 근무 환경
                        </p>
                        <p class="status-sub-menu-title">
                            6. 모집 요건
                        </p>
                        <p class="status-sub-menu-title">
                            7. 추가 정보
                        </p>
                        <p class="status-sub-menu-title">
                            8. 검토 및 수정
                        </p>
                    </div>
                    <p>회원가입</p>
                    <p>클라이언트 기본 정보</p>
                    <p>프로젝트 등록 완료</p>
                </div>
            </div> <!-- sidebar -->
            <div class="col">
                <div class="card card-body" style="background: white !important;">
                    <form id="budgetFrm">
                        <div class="form-input-section">
                            <div class="form-title">
                                <p>예산 및 일정</p>
                                <hr>
                            </div>
                            <%-- 이부분은 맨처음에 termBased로 했을때 뜨는거--%>

                            <div class="form-content">
                                <c:if test="${pvo.type eq '상주(인력구인)'}">
                                <p class="form-content-title">지출 가능 예산 <span class="required">*</span></p>
                                <p>지출 가능 예산은 파트너 1인당 월 단위로 지급받는 실수령액이며, 사업소득(3.3%)이 포함된 금액입니다.</p>
                                <p>위시켓 이용요금(5%)은 별도입니다.</p>
                                <div id="partnerBudget" class="row">
                                    <div class="form-group row col-8 bg-light partnerRow" >
                                        <select class="form-control col-4" name="availableBudget1">
                                            <option value="경력무관">경력무관</option>
                                            <option value="1~2년차">1~2년 차</option>
                                            <option value="3~4년차">3~4년 차</option>
                                            <option value="5~9년차">5~9년 차</option>
                                            <option value="10년차이상">10년 차 이상</option>
                                        </select>
                                        <input type="text" class="form-control col-3" name="availableBudget2" placeholder="인원수">
                                        <input type="text" class="form-control col-4" name="availableBudget3" placeholder="1인당 월 지급액">
                                    </div>
                                    <button type="button" id="addWorker" class="btn col-1 offset-1" onclick="addNewWorker()" style="height: 50px">
                                        &nbsp;<img class="img-item" src="/img/btn_icon_plus_normal.png">
                                    </button>
                                </div>
                                </c:if>
                                <c:if test="${pvo.type eq '외주(프로젝트계약)'}">
                                <p class="form-content-title">지출 가능 예산 <span class="required">*</span></p>
                                <p>프로젝트에 지출 가능한 예산을 입력해 주세요.</p>
                                <div class="form-group">
                                    <input type="text" class="form-control col-5">
                                    <label class="col-form-label">예상 결제 금액: 금액이 입력되면 *10퍼한 금액을 띄워줘야함</label>
                                </div>
                                </c:if>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" name="budgetNego" value="예산조율가능">
                                    <label class="form-check-label">프로젝트 예산의 조율이 가능해집니다.</label>
                                </div>
                                <div style="padding-left: 5px;">
                                    <img class="img-item" src="/img/icon_project_consulting_c.png" width="20" height="20">
                                    <p style="display: inline-block;">예산 입력이 어려우신가요?</p>
                                    <div style="background: #eaefff; height: 120px; padding: 10px 10px; border-radius: 5px;">
                                        <div class="form-group form-check">
                                            <input type="checkbox" class="form-check-input" name="budgetLater" value="상담후예산결정">
                                            <label class="form-check-label">상담 후 예산 결정</label>
                                        </div>
                                        <p>프로젝트 예산이 얼마나 필요할지 산정하기 어려우신가요?</p>
                                        <p>걱정마세요. 위시켓에서 유선으로 예산 책정을 도와드립니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">희망 근무 시작일 <span class="required">*</span></p>
                                <p>파트너가 프로젝트에 착수하는 날짜입니다.</p>
                                <p>해당 날짜에 프로젝트 시작이 가능한 파트너들이 지원하게 됩니다.</p>
                                <div class="form-group">
                                    <div class="input-group date" id="datetimepicker1" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input col-4" data-target="#datetimepicker1" name="projectStartDate"/>
                                        <div class="input-group-append" data-target="#datetimepicker1" data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="bi bi-calendar3"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">예상 진행 기간 <span class="required">*</span></p>
                                <p>프로젝트 진행 기간을 입력해 주세요.</p>
                                <div class="form-group">
                                    <input type="text" class="form-control col-5" name="projectTerm">
                                </div>
                            </div>
                            <input type="hidden" name="type" value="${pvo.type}">
                            <input type="hidden" name="purpose" value="${pvo.purpose}">
                            <input type="hidden" name="title" value="${pvo.title}">
                            <input type="hidden" name="category" value="${pvo.category}">
                            <input type="hidden" name="area" value="${pvo.area}">
                            <input type="hidden" name="projectStatus" value="${pvo.projectStatus}">
                            <input type="hidden" name="detailStatus" value="${pvo.detailStatus}">
                            <input type="hidden" name="detailTask" value="${pvo.detailTask}">
                            <input type="hidden" name="skillStack" value="${pvo.skillStack}">
                            <input type="hidden" name="skillStackUse" value="${pvo.skillStackUse}">

                            <hr/>
                            <div class="bottomBtns">
                                <span style="float: left;">
                                    <a href="/project/prepare" class="backBtn">
                                        <img class="img-item" src="/img/btn_icon_back_s.png">
                                        <p>이전</p>
                                    </a>
                                </span>
                                <span style="float: right">
                                    <button id="budgetNextBtn" class="btn btn-primary" onclick="clickNextBtn()">계속</button>
                                </span>
                            </div>
                        </div>
                    </form> <!-- form -->
                </div> <!-- card -->
            </div> <!-- main contents -->
        </div> <!-- row -->
    </div> <!-- div container-->
</div> <!-- main -->
<script type="text/javascript">
    // 달력 세팅
    $.fn.datetimepicker.Constructor.Default = $.extend({}, $.fn.datetimepicker.Constructor.Default, {
        icons: {
            previous: 'bi bi-chevron-left',
            next: 'bi bi-chevron-right'
        } });
    $('#datetimepicker1').datetimepicker({  format: 'YYYY-MM-DD'});

    // function addNewWorker() {
    //     let addWorkerBtn = document.getElementById('addWorker');
    //     addWorkerBtn.addEventListener('click', function(){
    //         let partnerBudget = document.getElementById('partnerBudget');
    //         let childNode = partnerBudget.cloneNode();
    //         partnerBudget.appendChild(childNode);
    //     });
    // }

    // 계속버튼
    function clickNextBtn(){
        var budgetFrm = document.getElementById('budgetFrm');
        budgetFrm.setAttribute('method', 'POST');
        budgetFrm.setAttribute('action', '/project/edit/5');
        budgetFrm.submit();
    }

</script>