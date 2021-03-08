<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/css/newProject.css">

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
                        <p class="status-sub-menu-title sub-menu-active">
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
                    <form id="meetingFrm">
                        <div class="form-input-section">
                            <div class="form-title">
                                <p>미팅 및 근무 환경</p>
                                <hr>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">사전 미팅 방식 <span class="required">*</span></p>
                                <p>위시켓이 클라이언트님에게 편한 미팅 방식으로 파트너와의 미팅 조율을 도와드립니다.</p>
                                <div class="form-group form-check">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" name="preMeetingType" value="온라인">
                                        온라인 (카카오톡, 화상미팅 등)
                                    </label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" name="preMeetingType" value="오프라인">
                                        오프라인</label>
                                </div>
                            </div>

                            <c:if test="${pvo.type ne '상주'}">
                                <div class="form-content">
                                    <p class="form-content-title">진행 중 미팅 <span class="required">*</span></p>
                                    <p class="caption-1">미팅 방식 <span class="required">*</span></p>
                                    <div class="form-group form-check">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" name="meetingType" value="온라인">
                                            온라인 (카카오톡, 화상미팅 등)
                                        </label>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" name="meetingType" value="오프라인">
                                            오프라인</label>
                                    </div>
                                    <p class="caption-1">미팅 주기 <span class="required">*</span></p>
                                    <div class="form-group form-check">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" name="meetingTerm" value="주 2회">
                                            주 2회
                                        </label>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" name="meetingTerm" value="주 1회">
                                            주 1회
                                        </label>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" name="meetingTerm" value="필요시 요청">
                                            필요시 요청
                                        </label>
                                    </div>
                                </div>
                            </c:if>

                            <div class="form-content">
                                <c:if test="${pvo.type eq '상주'}">
                                    <p class="form-content-title">근무 위치 <span class="required">*</span></p>
                                </c:if>
                                <c:if test="${pvo.type ne '상주'}">
                                    <p class="form-content-title">클라이언트 위치 <span class="required">*</span></p>
                                    <p class="caption-1">파트너가 미팅 위치 선정시 클라이언트님의 위치를 참고합니다.</p>
                                </c:if>
                                <div class="form-group row col-12">
                                    <select class="form-control col-3" id="addrSido" name="workPlace1" onchange="getGugun()">
                                        <option>시/도</option>
                                    </select>&nbsp;&nbsp;
                                    <select class="form-control col-3" id="addrGugun" name="workPlace2">
                                        <option>시/군/구</option>
                                    </select>
                                </div>
                            </div>
                            <c:if test="${pvo.type eq '상주'}">
                                <div class="form-content">
                                    <p class="form-content-title">근무 장소</p>
                                    <div class="from-group">
                                        <input type="text" class="col-8 form-control" name="workPlace3" placeholder="상세 주소">
                                    </div>
                                </div>
                                <div class="form-content">
                                    <p class="form-content-title">근무 시간 <span class="required">*</span></p>
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="radio" class="form-check-input" name="workingHours" value="오전 9시 ~ 오후 7시" onchange="getWorkingHours(this)">오전 9시 ~ 오후 6시</label>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="radio" class="form-check-input" name="workingHours" value="오전 10시 ~ 오후 7시" onchange="getWorkingHours(this)">오전 10시 ~ 오후 7시</label>
                                    </div>
                                    <div class="form-group form-check">
                                        <input type="radio" class="form-check-input" id="workingHoursEtc" name="workingHours" onchange="getWorkingHours(this)">
                                        <input type="text" class="form-control col-4" id="workingHoursText" placeholder="기타 (직접 입력)" disabled>
                                    </div>
                                </div>
                                <div class="form-content">
                                    <p class="form-content-title">휴게 시간 <span class="required">*</span></p>
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="radio" class="form-check-input" name="breakTimes" value="오후 12시 ~ 오후 1시" onchange="getBreakTimes(this)">오후 12시 ~ 오후 1시</label>
                                    </div>
                                    <div class="form-group form-check">
                                        <input type="radio" class="form-check-input" id="breakTimesEtc" name="breakTimes" onchange="getBreakTimes(this)">
                                        <input type="text" class="form-control col-4" id="breakTimesText" placeholder="직접입력" disabled>
                                    </div>
                                </div>

                                <div class="form-content">
                                    <p class="form-content-title">추가 근무 및 지원 <span class="required">*</span></p>
                                    <div class="form-group row">
                                        <p class="col-6">필요시 야간 근무를 요청할 수 있습니까?</p>
                                        <label class="col-2">예 <input type="radio" name="support1" value="필요시 야간 근무 요청"></label>
                                        <label class="col-2">아니오 <input type="radio" name="support1" value="야간 근무 없음" checked></label>
                                    </div>
                                    <div class="form-group row">
                                        <p class="col-6">필요시 주말 근무를 요청할 수 있습니까?</p>
                                        <label class="col-2">예 <input type="radio" name="support2" value="필요시 주말 근무 요청"></label>
                                        <label class="col-2">아니오 <input type="radio" name="support2" value="주말 근무 없음" checked></label>
                                    </div>
                                    <div class="form-group row">
                                        <p class="col-6">근무에 필요한 장비 지원이 가능합니까?</p>
                                        <label class="col-2">예 <input type="radio" name="support3" value="장비 지원 가능"></label>
                                        <label class="col-2">아니오 <input type="radio" name="support3" value="장비 지원 불가능" checked></label>
                                    </div>
                                    <div class="form-group row">
                                        <p class="col-6">근무 시 개인 장비 지참이 가능합니까?</p>
                                        <label class="col-2">예 <input type="radio" name="support4" value="개인 장비 지참 가능"></label>
                                        <label class="col-2">아니오 <input type="radio" name="support4" value="개인 장비 지참 불가능" checked></label>
                                    </div>
                                    <div class="form-group row">
                                        <p class="col-6">근무 시 식사 지원이 가능합니까?</p>
                                        <label class="col-2">예 <input type="radio" name="support5" value="근무 시 식사 지원 가능"></label>
                                        <label class="col-2">아니오 <input type="radio" name="support5" value="근무 시 식사 지원 불가능" checked></label>
                                    </div>
                                </div>
                            </c:if>
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
                            <hr/>
                            <div class="bottomBtns">
                                <span style="float: left;">
                                    <a href="javascript:window.history.back();" class="backBtn">
                                        <img class="img-item" src="/img/btn_icon_back_s.png">
                                        <p>이전</p>
                                    </a>
                                </span>
                                <span style="float: right">
                                    <button id="meetingNextBtn" class="btn btn-primary" onclick="clickNextBtn()">계속</button>
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
    window.onload = function(){
        getSido();
    }

    // 근무 시간 직접입력 클릭
    function getWorkingHours(obj){
        var workingHoursText = document.getElementById('workingHoursText');
        if(obj.id == 'workingHoursEtc'){
            workingHoursText.removeAttribute('disabled');
        } else {
            workingHoursText.setAttribute('disabled', 'true');
        }
    }
    // 휴게 시간 직접입력 클릭
    function getBreakTimes(obj){
        var breakTimesText = document.getElementById('breakTimesText');
        if(obj.id == 'breakTimesEtc'){
            breakTimesText.removeAttribute('disabled');
        } else {
            breakTimesText.setAttribute('disabled', 'true');
        }
    }

    // 주소 관련 함수
    // 시/도 가져오기
    function getSido(){
        jQuery.ajax({
            type:"GET",
            url:"/project/edit/sido",
            success : function(data) {
                let opts = '';
                $.each(data, function(){ // 행단위 반복처리
                    let sido = '';
                    $.each(this, function(k, v){ // 열단위 반복처리
                        if(v != null) sido += v;
                    });
                    opts += '<option>' + sido + '</option>';
                });
                // 기존 option 태그 제거
                // $('#addrSido').find('option').remove();
                // 새로 만든 option 태그를 추가함
                $('#addrSido').append(opts);
            },
            complete : function(data) {
                // 통신이 실패했어도 완료가 되었을 때 이 함수를 타게 된다.
            },
            error : function(xhr, status, error) {
                alert(xhr, status, + "/" + error);
            }
        });
    }

    // 시/구/군 가져오기
    function getGugun(){
        $.ajax({
            url: '/project/edit/gugun',
            type: 'GET',
            data: { sido: $('#addrSido').val() }
        })
            .done(function(data){
                // 서버로부터 넘어온 데이터는 JSON형식이므로
                // 출력시 Object로 보여짐
                let opts = '';

                $.each(data, function(){ // 행단위 반복처리
                    let zip = '';
                    $.each(this, function(k, v){ // 열단위 반복처리
                        if(v != null) zip += v;
                    });
                    opts += '<option>' + zip + '</option>';
                });
                // 기존 option 태그 제거
                $('#addrGugun').find('option').remove();
                // 새로 만든 option 태그를 추가함
                $('#addrGugun').append(opts);
            })
            .fail(function(xhr, status, error){
                alert(xhr, status, + "/" + error);
            });
    }

    // 계속버튼클릭 함수
    function clickNextBtn(){
        // 유효성검사
        // 사전 미팅방식 필수항목
        var preMeetingType = document.getElementsByName('preMeetingType');
        var checked = false;
        for(var i = 0; i < preMeetingType.length; i++){
            if(preMeetingType[i].checked == true){
                checked = true;
                break;
            }
        }

        var type = document.getElementById('type');
        var sido = document.getElementById('addrSido');
        var gugun = document.getElementById('addrGugun');

        if( type.value == '상주'){
            var workingHours = document.getElementsByName('workingHours');
            var checked2 = false;
            for(var i = 0; i < workingHours.length; i++){
                if(workingHours[i].checked == true){
                    if(workingHours[i].id == 'workingHoursEtc'){
                        var workingHoursText = document.getElementById('workingHoursText');
                        if(workingHoursText.value == ''){
                            checked2 = false
                        } else {
                            workingHours[i].value = workingHoursText.value;
                            checked2 = true;
                            break;
                        }
                    } else {
                        checked2 = true;
                        break;
                    }
                }
            }
            var breakTimes = document.getElementsByName('breakTimes');
            var checked5 = false;
            for(var i = 0; i < breakTimes.length; i++){
                if(breakTimes[i].checked == true){
                    if(breakTimes[i].id == 'breakTimesEtc'){
                        var breakTimesText = document.getElementById('breakTimesText');
                        if(breakTimesText.value == ''){
                            checked5 = false
                        } else {
                            breakTimes[i].value = breakTimesText.value;
                            checked5 = true;
                            break;
                        }
                    } else {
                        checked5 = true;
                        break;
                    }
                }
            }

            if(checked == false){
                alert('사전 미팅 방식을 선택해주세요.');
                event.preventDefault();
            } else if (sido.value == '시/도' || gugun.value == '시/군/구') {
                alert('근무 위치를 선택해주세요.');
                event.preventDefault();
            } else if(checked2 == false){
                alert('근무 시간을 선택해주세요.');
                event.preventDefault();
            } else if(checked5 == false){
                alert('휴게 시간을 선택해주세요.');
                event.preventDefault();
            } else {
                var meetingFrm = document.getElementById('meetingFrm');
                meetingFrm.setAttribute('method', 'POST');
                meetingFrm.setAttribute('action', '/project/edit/6');
                meetingFrm.submit();
            }

        } else {
            var checked3 = false;
            var meetingType = document.getElementsByName('meetingType');
            for(var i = 0; i < meetingType.length ; i++){
                if(meetingType[i].checked == true){
                    checked3 = true;
                    break;
                }
            }

            var checked4 = false;
            var meetingTerm = document.getElementsByName('meetingTerm');
            for(var i = 0; i < meetingTerm.length ; i++){
                if(meetingTerm[i].checked == true){
                    checked4 = true;
                    break;
                }
            }

            if(checked == false){
                alert('사전 미팅 방식을 선택해주세요.');
                event.preventDefault();
            } else if (checked3 == false){
                alert('진행 중 미팅 방식을 선택해주세요.');
                event.preventDefault();
            } else if (checked4 == false) {
                alert('진행 중 미팅 주기를 선택해주세요.');
                event.preventDefault();
            } else if (sido.value == '시/도' || gugun.value == '시/군/구') {
                alert('클라이언트 위치를 선택해주세요.');
                event.preventDefault();
            } else {
                var meetingFrm = document.getElementById('meetingFrm');
                meetingFrm.setAttribute('method', 'POST');
                meetingFrm.setAttribute('action', '/project/edit/6');
                meetingFrm.submit();
            }
        }
    }

</script>