<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/css/newProject.css">

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />

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
                        <p class="status-sub-menu-title">
                            4. 예산 및 일정<img class="status-mark" src="/img/tab_icon_check_on_c.png" style="float: right">
                        </p>
                        <p class="status-sub-menu-title">
                            5. 미팅 및 근무 환경<img class="status-mark" src="/img/tab_icon_check_on_c.png" style="float: right">
                        </p>
                        <p class="status-sub-menu-title sub-menu-active">
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
                    <form id="requireFrm">
                        <div class="form-input-section">
                            <div class="form-title">
                                <p>모집요건</p>
                                <hr>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">지원자 모집 마감일 <span class="required">*</span></p>
                                <p>지원자를 모집하는 기간은 최대 14일까지 가능합니다.</p>
                                <p>지원자 모집 기간 중에도 파트너 선정과 계약 진행이 가능합니다.</p>
                                <div class="form-group">
                                    <div class="input-group date" id="datetimepicker1" data-target-input="nearest">
                                        <input type="text" id="deadLine" class="form-control datetimepicker-input col-4" name="deadLine" data-target="#datetimepicker1"/>
                                        <div class="input-group-append" data-target="#datetimepicker1" data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="bi bi-calendar3"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">지원사업 여부 <span class="required">*</span></p>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="supportBusiness" value="정부지원사업,연구과제">네, 정부지원사업 또는 연구과제입니다.</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="supportBusiness" value="없음">아닙니다.</label>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">지원자 필수 요건</p>
                                <p>아래 조건에 맞는 파트너를 지원자로 받습니다.</p>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="checkbox" class="form-check-input" name="prerequisites" value="개인 또는 팀 가능">개인 또는 팀 가능</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="checkbox" class="form-check-input" name="prerequisites" value="개인사업자 가능">개인사업자 가능</label>
                                </div>
                                <c:if test="${pvo.type eq '상주'}">
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="checkbox" class="form-check-input" name="prerequisites" value="자격증, 증빙서류 필수">자격증, 증빙서류 필수</label>
                                    </div>
                                </c:if>
                                <c:if test="${pvo.type ne '상주'}">
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="checkbox" class="form-check-input" name="prerequisites" value="업력 1년 이상">업력 1년 이상</label>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="checkbox" class="form-check-input" name="prerequisites" value="자사 협력업체 등록 가능">자사 협력업체 등록 가능</label>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="checkbox" class="form-check-input" name="prerequisites" value="보증보험 발급 가능">보증보험 발급 가능</label>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="checkbox" class="form-check-input" name="prerequisites" value="프로젝트 제안 발표 가능">프로젝트 제안 발표 가능</label>
                                    </div>
                                </c:if>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" id="prerequisitesEtc" name="prerequisites" onclick="checkEtc(this)">
                                    <input type="text" class="form-control col-11" id="prerequisitesEtcText" placeholder="기타 (직접 입력)" disabled>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">파트너 지원 전 질문</p>
                                <p>파트너가 프로젝트에 지원할 때 답변해야 할 질문을 작성해 주세요. 최대 3개까지 입력 가능합니다.</p>
                                <p>클라이언트님이 파트너를 선정할 때 지원서와 함께 답변 내용을 검토할 수 있습니다.</p>
                                <div id="questionParent">
                                    <div class="row col-12">
                                        <div id="questionWrapper" class="form-group col-8">
                                            <input type="text" class="form-control" name="question" placeholder="예) 물류 분야 프로젝트를 수행한 경험이 있습니까?">
                                        </div>
                                        <button type="button" id="questionBtn" class="btn col-1 offset-1" onclick="addRow()"  style="height: 45px">
                                            <img class="img-item" src="/img/btn_icon_plus_normal.png">
                                        </button>
                                    </div>
                                </div>
<%--                                <div class="form-group">--%>
<%--                                    <input type="text" class="form-control" name="question" placeholder="예) 물류 분야 프로젝트를 수행한 경험이 있습니까?">--%>
<%--                                </div>--%>
<%--                                <div class="form-group">--%>
<%--                                    <input type="text" class="form-control" name="question" placeholder="예) 물류 분야 프로젝트를 수행한 경험이 있습니까?">--%>
<%--                                </div>--%>
<%--                                <div class="form-group">--%>
<%--                                    <input type="text" class="form-control" name="question" placeholder="예) 물류 분야 프로젝트를 수행한 경험이 있습니까?">--%>
<%--                                </div>--%>
                            </div>

                            <input type="hidden" id="type" name="type" value="${pvo.type}">
                            <input type="hidden" name="purpose" value="${pvo.purpose}">
                            <input type="hidden" name="title" value="${pvo.title}">
                            <input type="hidden" name="industryArea" value="${pvo.industryArea}">
                            <input type="hidden" name="category" value="${pvo.category}">
                            <input type="hidden" name="area" value="${pvo.area}">
                            <input type="hidden" name="position" value="${pvo.position}">
                            <input type="hidden" name="projectStatus" value="${pvo.projectStatus}">
                            <input type="hidden" name="detailStatus" value="${pvo.detailStatus}">
                            <input type="hidden" name="detailTask" value="${pvo.detailTask}">
                            <input type="hidden" name="skillStack" value="${pvo.skillStack}">
                            <input type="hidden" name="skillStackUse" value="${pvo.skillStackUse}">
                            <input type="hidden" name="availableBudget" value="${pvo.availableBudget}">
                            <input type="hidden" name="budgetNego" value="${pvo.budgetNego}">
                            <input type="hidden" name="budgetLater" value="${pvo.budgetLater}">
                            <input type="hidden" name="projectStartDate" value="${pvo.projectStartDate}">
                            <input type="hidden" name="projectTerm" value="${pvo.projectTerm}">
                            <input type="hidden" name="preMeetingType" value="${pvo.preMeetingType}">
                            <input type="hidden" name="meetingType" value="${pvo.meetingType}">
                            <input type="hidden" name="meetingTerm" value="${pvo.meetingTerm}">
                            <input type="hidden" name="workPlace" value="${pvo.workPlace}">
                            <input type="hidden" name="workingHours" value="${pvo.workingHours}">
                            <input type="hidden" name="breakTimes" value="${pvo.breakTimes}">
                            <input type="hidden" name="extraWorkAndSupport" value="${pvo.extraWorkAndSupport}">
                            <hr/>
                            <div class="bottomBtns">
                                <span style="float: left;">
                                    <a href="javascript:window.history.back();" class="backBtn">
                                        <img class="img-item" src="/img/btn_icon_back_s.png">
                                        <p>이전</p>
                                    </a>
                                </span>
                                <span style="float: right">
                                    <button id="detailNextBtn" class="btn btn-primary" onclick="clickNextBtn()">계속</button>
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
    $('#datetimepicker1').datetimepicker({  format: 'YYYY-MM-DD', defaultDate: new Date(), minDate: new Date()});

    function checkEtc(etc){
        var etcText = document.getElementById('prerequisitesEtcText');
        if(etc.checked == true){
            etcText.removeAttribute('disabled');
        } else {
            etcText.setAttribute('disabled', 'true');
        }
    }

    function addRow(){
        var questionParent = document.getElementById('questionParent');

        var questionWrapper = document.getElementById('questionWrapper');
        var cloneDiv = questionWrapper.cloneNode(true);

        var deleteBtn = document.createElement('button');
        deleteBtn.setAttribute('type', 'button');
        deleteBtn.setAttribute('class', 'btn col-1 offset-1');
        deleteBtn.setAttribute('style', 'height: 50px');
        deleteBtn.setAttribute('onclick', 'deleteRow(this)');

        var imgTag = document.createElement('img');
        imgTag.setAttribute('class', 'img-item');
        imgTag.setAttribute('src', '/img/btn_icon_minus_normal.png');
        deleteBtn.appendChild(imgTag);

        var wrapper = document.createElement('div');
        wrapper.setAttribute('class', 'row col-12');
        wrapper.appendChild(cloneDiv);
        wrapper.appendChild(deleteBtn);

        questionParent.appendChild(wrapper);
    }

    function deleteRow(delBtn){
        var parent = delBtn.parentNode;
        parent.parentNode.removeChild(parent);
    }

    // 계속버튼클릭 함수
    function clickNextBtn(){

        // 기타 입력시 텍스트 처리
        var etcCheckbox = document.getElementById('prerequisitesEtc');
        if(etcCheckbox.checked == true){
            var etcText = document.getElementById('prerequisitesEtcText');
            etcCheckbox.value = etcText.value;
        }

        // 지원 사업여부 확인
        var supportBusiness = document.getElementsByName('supportBusiness');
        var checked = false;
        for(var i = 0; i < supportBusiness.length; i++){
            if(supportBusiness[i].checked == true){
                checked = true;
                break;
            }
        }

        // 모집 마감일
        var deadLine = document.getElementById('deadLine');

        if (deadLine.value == '') {
            alert('지원자 모집 마감일을 선택해주세요.');
            event.preventDefault();
        } else if(checked == false){
            alert('지원사업 여부를 선택해주세요.');
            event.preventDefault();
        } else {
            var requireFrm = document.getElementById('requireFrm');
            requireFrm.setAttribute('method', 'POST');
            requireFrm.setAttribute('action', '/project/edit/7');
            requireFrm.submit();
        }

    }


</script>