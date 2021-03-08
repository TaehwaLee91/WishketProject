<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/css/newProject.css">

<div id="main" class="bg-light">
    <div class="container">
        <div class="row enroll-row">
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
                        <p class="status-sub-menu-title sub-menu-active">
                            2. 준비 상태
                        </p>
                        <p class="status-sub-menu-title">
                            3. 프로젝트 상세
                        </p>
                        <p class="status-sub-menu-title">
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
                    <form id="prepareFrm">
                        <div class="form-input-section">
                            <div class="form-title">
                                <p>준비 상태</p>
                                <hr>
                            </div> <!--form title -->
                            <c:if test="${pvo.type ne '상주'}">
                                <div class="form-content">
                                    <p class="form-content-title">기획 상태 <span class="required">*</span></p>
                                    <p>업무 범위 산정과 예산 및 일정 상담을 위해 현재 기획 상태를 선택해 주세요.</p>
                                    <div class="form-row">
                                        <label class="card col-3 project-select-card">
                                            <input name="projectStatus" type="radio" id="status1" value="아이디어" onchange="checkRadio(this)">
                                            <div class="select-card-content">
                                                <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_planning_status_1_d.png"/>
                                                <img class="select-card-img active-select-card-img" src="/img/select_card_icon_planning_status_1_c.png" style="display: none;"/>
                                                <br>
                                                <p>아이디어만 있습니다.<br/></p>
                                            </div>
                                        </label> <!-- card1 -->
                                        <label class="card col-3 project-select-card">
                                            <input name="projectStatus" type="radio"  id="status2" value="간략한내용" onchange="checkRadio(this)">
                                            <div class="select-card-content">
                                                <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_planning_status_2_d.png"/>
                                                <img class="select-card-img active-select-card-img" src="/img/select_card_icon_planning_status_2_c.png" style="display: none;"/>
                                                <br>
                                                <p>필요한 내용들을 간단히<br/>정리해두었습니다.</p>
                                            </div>
                                        </label> <!-- card2 -->
                                        <label class="card col-3 project-select-card">
                                            <input name="projectStatus" type="radio" id="status3" value="구체적내용" onchange="checkRadio(this)">
                                            <div class="select-card-content">
                                                <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_planning_status_3_d.png"/>
                                                <img class="select-card-img active-select-card-img" src="/img/select_card_icon_planning_status_3_c.png" style="display: none;"/>
                                                <br>
                                                <p>상세한 기획 문서가<br/>존재합니다.</p>
                                            </div>
                                        </label> <!-- card3 -->
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${pvo.type eq '상주'}">
                                <div class="form-content">
                                    <p class="form-content-title">프로젝트 상태 <span class="required">*</span></p>
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="radio" class="form-check-input" name="projectStatus" value="프로젝트 계획중">프로젝트를 계획하는 중입니다.(내부 계획수립 또는 고객사 제안 단계)</label>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="radio" class="form-check-input" name="projectStatus" value="프로젝트 착수 준비">프로젝트를 착수하기 위한 준비 중입니다.</label>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="radio" class="form-check-input" name="projectStatus" value="요구사항 분석중">프로젝트를 착수하여 요구사항을 분석하고 있습니다.</label>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="radio" class="form-check-input" name="projectStatus" value="요구사항 분석 또는 설계 문서 존재">요구사항 분석 또는 설계 문서가 있습니다.</label>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label"><input type="radio" class="form-check-input" name="projectStatus" value="프로젝트 진행중">프로젝트를 진행하는 중입니다.</label>
                                    </div>
                                </div>
                            </c:if>
                            <div id="detailPlan" class="form-content" <c:if test="${pvo.type ne '상주'}">style="display: none"</c:if>>
                                <p class="form-content-title">상세 기획 상태</p>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="checkbox" class="form-check-input" name="detailStatus" value="요구사항정의서">요구사항 정의서</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="checkbox" class="form-check-input" name="detailStatus" value="제안요청서">제안요청서</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="checkbox" class="form-check-input" name="detailStatus" value="메뉴구조도">메뉴구조도 (IA)</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="checkbox" class="form-check-input" name="detailStatus" value="화면설계서">화면설계서 (스토리보드, 와이어프레임)</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="checkbox" class="form-check-input" name="detailStatus" value="프로토타입">프로토타입 (프로젝트 결과물의 샘플 버전)</label>
                                </div>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" id="detailEtc" name="detailStatus" onclick="checkEtc(this)">
                                    <input type="text" class="form-control col-11" id="detailEtcText" placeholder="기타 (직접 입력)" disabled>
                                </div>
                            </div>

                            <%-- 추가는 구현. 삭제는 미구현 --%>
                            <div class="form-content" id="basicPlan">
                                <p class="form-content-title">프로젝트 관련자료</p>
                                <p>아이디어 또는 필요한 내용을 정리한 문서를 추가해 주세요.<p>
                                <p>프로젝트 예산 및 일정 산정에 활용되며, 문서 및 이미지 파일만 추가 가능합니다.</p>
                                <button type="button" class="col-12 text-center bg-light" style="border: 1px dotted gray;" onclick="clickFileBtn(this)">
                                    <div style="padding-top: 15px">
<%--                                        <p><img src = "/img/btn_icon_plus_normal.png"/>프로젝트 관련 자료 추가</p>--%>
                                        <p><i class="bi bi-plus-square-dotted" style="font-size: 20px"></i>&nbsp;&nbsp;&nbsp;프로젝트 관련 자료 추가</p>
                                    </div>
                                </button>
                                <div id="fileWrapper" class="form-group">
<%--                                    <div>--%>
<%--                                        <input type="file" name="file" id="file1" onchange="addFile(this)" style="display: none"/>--%>
<%--                                    </div>--%>
<%--                                    <div>--%>
<%--                                        <input type="file" name="file" id="file2" onchange="addFile(this)" style="display: none"/>--%>
<%--                                    </div>--%>
<%--                                    <div>--%>
<%--                                        <input type="file" name="file" id="file3" onchange="addFile(this)" style="display: none"/>--%>
<%--                                    </div>--%>
                                </div>
                            </div>

                            <input type="hidden" name="type" value="${pvo.type}">
                            <input type="hidden" name="purpose" value="${pvo.purpose}">
                            <input type="hidden" name="title" value="${pvo.title}">
                            <input type="hidden" name="category" value="${pvo.category}">
                            <input type="hidden" name="area" value="${pvo.area}">
                            <input type="hidden" name="industryArea" value="${pvo.industryArea}">
                            <input type="hidden" name="position" value="${pvo.position}">

                            <hr/>
                            <div class="bottomBtns">
                                <span style="float: left;">
                                    <a href="javascript:window.history.back();" class="backBtn">
                                        <img class="img-item" src="/img/btn_icon_back_s.png">
                                        <p>이전</p>
                                    </a>
                                </span>
                                <span style="float: right">
                                    <button id="prepareNextBtn" class="btn btn-primary" onclick="clickNextBtn()">계속</button>
                                </span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div> <!-- row -->
    </div> <!-- div container-->
</div> <!-- main -->

<script type="text/javascript">
    // 기타입력
    function checkEtc(etc){
        var detailEtcText = document.getElementById('detailEtcText');
        if(etc.checked == true){
            detailEtcText.removeAttribute('disabled');
        } else {
            detailEtcText.setAttribute('disabled', 'true');
        }
    }

    // 기획상태 카드 선택되었을때 이벤트
    function checkRadio(radio) {
        var detailPlan = document.getElementById('detailPlan');

        if (radio.id !== 'status1') {
            detailPlan.setAttribute('style', 'display: block');
        } else {
            detailPlan.setAttribute('style', 'display: none');
        }

        var radioCards = document.getElementsByName('projectStatus');

        for (var i = 0; i < radioCards.length; i++) {
            if (radioCards[i].checked) {
                var parentNode = radioCards[i].parentNode;
                var parentImg = parentNode.getElementsByTagName('div')[0];
                var imgTag = parentImg.getElementsByTagName('img');

                parentNode.setAttribute('style', 'background: #E7EEFF');
                imgTag[0].setAttribute('style', 'display: none');
                imgTag[1].removeAttribute('style');

            } else {
                var parentNode = radioCards[i].parentNode;
                var parentImg = parentNode.getElementsByTagName('div')[0];
                var imgTag = parentImg.getElementsByTagName('img');

                parentNode.removeAttribute('style');
                imgTag[0].removeAttribute('style');
                imgTag[1].setAttribute('style', 'display: none');
            }
        }
    }

    // 파일 개수는 3개까지만 추가되게 함
    function clickFileBtn(btn) {

        var wrapper = document.createElement('div');
        var nextSib = btn.nextElementSibling;
        if(nextSib.childElementCount >= 3) {
            alert('파일은 최대 3개까지 업로드 가능합니다.');
            return false;
        } else {
            var fileInput = document.createElement('input');
            fileInput.setAttribute('type', 'file');
            fileInput.setAttribute('name', 'file');
            fileInput.setAttribute('onchange', 'addFile(this)');
            fileInput.setAttribute('style', 'display: none');
            wrapper.appendChild(fileInput);

            nextSib.appendChild(wrapper);
            fileInput.click();
        }

    }

    // 파일 추가시 파일명 출력
    function addFile(fileTag){
        var parent = fileTag.parentElement;

        var filePath = fileTag.value.split('\\');
        var filename = filePath[filePath.length-1];

        var deleteBtn = document.createElement('button');
        deleteBtn.setAttribute('type', 'button');
        deleteBtn.setAttribute('class', 'btn btn-danger col-1');
        deleteBtn.setAttribute('onclick', 'deleteFile(this)');
        deleteBtn.innerText = '삭제';

        var pTag = document.createElement('p');

        pTag.setAttribute('class', 'col-8 offset-1 text-left')
        pTag.setAttribute('style', 'padding: 10px 0px; display: inline-block;');
        pTag.innerText = filename;

        var wrapper = document.createElement('div');
        wrapper.appendChild(deleteBtn);
        wrapper.appendChild(pTag);
        parent.appendChild(wrapper);

    }

    function deleteFile(btn){
        var parent = btn.parentNode;
        var wrapper = parent.parentNode;
        var wrapperParent = wrapper.parentNode;
        wrapperParent.removeChild(wrapper);
    }

    // 계속버튼 클릭
    function clickNextBtn(){
        // 기타 입력시 텍스트 처리
        var detailEtc = document.getElementById('detailEtc');
        if(detailEtc.checked == true){
            var detailEtcText = document.getElementById('detailEtcText');
            detailEtc.value = detailEtcText.value;
        }

        // 유효성 검사
        var projectStatus = document.getElementsByName('projectStatus');

        var checked = false;
        for(var i = 0; i < projectStatus.length; i++){
            if(projectStatus[i].checked == true){
                checked = true;
                break;
            }
        }

        if(checked == false){
            alert('기획 상태/프로젝트 상태를 선택해주세요.');
            event.preventDefault();
        } else {
            var prepareFrm = document.getElementById('prepareFrm');
            prepareFrm.setAttribute('method', 'POST');
            prepareFrm.setAttribute('enctype', 'multipart/form-data')
            prepareFrm.setAttribute('action', '/project/edit/3');
            prepareFrm.submit();
        }
    }

</script>