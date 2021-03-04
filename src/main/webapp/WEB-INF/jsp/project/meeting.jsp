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
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="preMeetingType" value="온라인"> 온라인 (카카오톡, 화상미팅 등)</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="preMeetingType" value="오프라인">오프라인</label>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">근무 위치 <span class="required">*</span></p>
                                <div class="form-group row col-12">
                                    <select class="form-control col-3" id="addrSido" name="workPlace1" onchange="getGugun()">
                                        <option>시/도</option>
                                    </select>&nbsp;&nbsp;
                                    <select class="form-control col-3" id="addrGugun" name="workPlace2">
                                        <option>시/군/구</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">근무 장소</p>
                                <div class="from-group">
                                    <input type="text" class="col-8 form-control" name="workPlace3" placeholder="상세 주소">
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">근무 시간 <span class="required">*</span></p>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="workingHours" value="오전 9시 ~ 오후 7시">오전 9시 ~ 오후 6시</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="workingHours" value="오전 10시 ~ 오후 7시">오전 10시 ~ 오후 7시</label>
                                </div>
                                <div class="form-group form-check">
                                    <input type="radio" class="form-check-input" id="workingHoursEtc" name="workingHours" onclick="getWorkingHours()">
                                    <input type="text" class="form-control col-4" id="workingHoursText" placeholder="기타 (직접 입력)" disabled>
                                </div>
                            </div>

                            <div class="form-content">
                                <p class="form-content-title">추가 근무 및 지원 <span class="required">*</span></p>
                                <div class="form-group row">
                                    <p class="col-6">필요시 야간 근무를 요청할 수 있습니까?</p>
                                    <label class="col-2">예 <input type="radio" name="support1" value="필요시 야간 근무 요청" checked></label>
                                    <label class="col-2">아니오 <input type="radio" name="support1" value="야간 근무 없음"></label>
                                </div>
                                <div class="form-group row">
                                    <p class="col-6">필요시 주말 근무를 요청할 수 있습니까?</p>
                                    <label class="col-2">예 <input type="radio" name="support2" value="필요시 주말 근무 요청" checked></label>
                                    <label class="col-2">아니오 <input type="radio" name="support2" value="주말 근무 없음"></label>
                                </div>
                                <div class="form-group row">
                                    <p class="col-6">근무에 필요한 장비 지원이 가능합니까?</p>
                                    <label class="col-2">예 <input type="radio" name="support3" value="장비 지원 가능" checked></label>
                                    <label class="col-2">아니오 <input type="radio" name="support3" value="장비 지원 불가능"></label>
                                </div>
                                <div class="form-group row">
                                    <p class="col-6">근무 시 개인 장비 지참이 가능합니까?</p>
                                    <label class="col-2">예 <input type="radio" name="support4" value="개인 장비 지참 가능" checked></label>
                                    <label class="col-2">아니오 <input type="radio" name="support4" value="개인 장비 지참 불가능"></label>
                                </div>
                                <div class="form-group row">
                                    <p class="col-6">근무 시 개인 장비 지참이 가능합니까?</p>
                                    <label class="col-2">예 <input type="radio" name="support5" value="근무 시 식사 지원 가능" checked></label>
                                    <label class="col-2">아니오 <input type="radio" name="support5" value="근무 시 식사 지원 불가능"></label>
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
                            <input type="hidden" name="availableBudget" value="${pvo.availableBudget}">
                            <input type="hidden" name="projectTerm" value="${pvo.projectTerm}">
                            <hr/>
                            <div class="bottomBtns">
                                <span style="float: left;">
                                    <a href="/project/prepare" class="backBtn">
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

    function getWorkingHours(){
        var workingHoursText = document.getElementById('workingHoursText');
        workingHoursText.removeAttribute('disabled');
    }

    // 주소 관련 함수
    // 시/도 가져오기
    function getSido(){
        jQuery.ajax({
            type:"GET",
            url:"/project/edit/sido",
            // dataType:"JSON",
            success : function(data) {
                // 서버로부터 넘어온 데이터는 JSON형식이므로
                // 출력시 Object로 보여짐
                let opts = '';
                console.log(data)
                $.each(data, function(){ // 행단위 반복처리
                    let sido = '';
                    $.each(this, function(k, v){ // 열단위 반복처리
                        if(v != null) sido += v;
                    });
                    opts += '<option>' + sido + '</option>';
                });
                // 기존 option 태그 제거
                $('#addrSido').find('option').remove();
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
        // 기타 입력 확인
        var meetingFrm = document.getElementById('meetingFrm');
        var workingHours = document.getElementsByName('workingHours');
            for(var i = 0; i < workingHours.length; i++){
                if(workingHours[i].id == "workingHoursEtc"){
                    var workingHoursText = document.getElementById('workingHoursText');
                    workingHours[i].value = workingHoursText.value;
                }
            }

        meetingFrm.setAttribute('method', 'POST');
        meetingFrm.setAttribute('action', '/project/edit/6');
        meetingFrm.submit();
    }

</script>