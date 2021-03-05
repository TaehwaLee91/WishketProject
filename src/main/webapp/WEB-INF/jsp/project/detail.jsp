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
                        <p class="status-sub-menu-title sub-menu-active">
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
                    <form id="detailFrm">
                        <div class="form-input-section">
                            <div class="form-title">
                                <p>프로젝트 상세</p>
                                <hr>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">상세 업무 내용 <span class="required">*</span></p>
                                <div>
                                    <img class="img-item"  src="/img/tab_icon_check_c.png">
                                    <p style="display: inline-block">업무 내용을 상세하게 작성해주실수록, 더 적합한 파트너를 만날 수 있습니다.</p>
                                </div>
                                <div>
                                    <img class="img-item" src="/img/tab_icon_check_c.png">
                                    <p style="display: inline-block">파트너가 알아야 할 유의사항(필수 사항, 전문 경험 등)도 함께 작성해 주세요.</p>
                                </div>
                                <div class="text-center" style="background: #eaefff; height: 40px; padding: 10px 0px 0px 0px; border-radius: 5px;">
                                    <img class="img-item" src="/img/icon_project_consulting_c.png" width="20" height="20">
                                    <p style="display: inline-block; color: #2e6baa; padding-left: 5px;">내용 작성이 어렵다면, 가능한 만큼 작성해주세요. 위시켓이 유선으로 정리를 도와드립니다.</p>
                                </div><br/>
                                <div class="form-group">
                                    <textarea id="detailTask" name="detailTask" class="col-lg-12 form-control" style="height: 500px; resize: none" maxlength="5000">
프로젝트 개요 :
참고) 프로젝트 소개, 목적 등

프로젝트 팀 구성 :
참고) 팀 구성 및 인원, 협업 대상자 등

구인 배경 :
참고) 신규, 결원 충원, 추가 구인 등

프로젝트 일정 :
참고) 프로젝트 시작/종료일, 런칭 예정일, 근무 시작/종료일 등

상세 업무 :
참고) 담당하게 될 업무, 개발 범위 등

필수 기술 :
참고) Java, Spring 등

자격 요건 :
참고) 필수 프로젝트 경험, 필수 기술 사용 경력 등

우대 사항 :
참고) 우대 업무 경험, 우대 보유 기술 등

복리후생 :
참고) 휴가일수, 추가근무 수당지급, 교통비 및 체재비 지원 등
                                    </textarea>
                                    <label for="detailTask" class="col-form-label caption-1">5,000자 이내로 작성해주세요.</label>
                                </div>
                                <p class="form-content-title">관련 기술</p>
                                <p>더 적합한 파트너가 프로젝트를 찾고 지원할 수 있도록 프로젝트와 관련된 기술을 입력해주세요.</p>
                                <div class="form-group">
                                    <input class="col-lg-12 form-control" type="text" id="skillStack" name="skillStack" placeholder="추가할 기술을 입력해 주세요.">
                                    <label for="skillStack" class="col-form-label-sm">기술명을 입력한 후, 해당하는 기술을 선택하거나 엔터키를 눌러 추가해 주세요.</label>
                                </div>
                                <div class="form-group form-check">
                                    <input class="form-check-input" type="checkbox" id="skillStackUse" name="skillStackUse" value="관련기술필수사용">
                                    <label for="skillStackUse" class="form-check-label">입력한 관련 기술을 필두로 사용해야 합니다.</label>
                                </div>
                            </div>
                            <input type="hidden" name="type" value="${pvo.type}">
                            <input type="hidden" name="purpose" value="${pvo.purpose}">
                            <input type="hidden" name="title" value="${pvo.title}">
                            <input type="hidden" name="category" value="${pvo.category}">
                            <input type="hidden" name="area" value="${pvo.area}">
                            <input type="hidden" name="projectStatus" value="${pvo.projectStatus}">
                            <input type="hidden" name="detailStatus" value="${pvo.detailStatus}">
                            <hr/>
                            <div class="bottomBtns">
                                <span style="float: left;">
                                    <a href="/project/prepare" class="backBtn">
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

    // 계속버튼 클릭
    function clickNextBtn(){
        var detailFrm = document.getElementById('detailFrm');
        detailFrm.setAttribute('method', 'POST');
        detailFrm.setAttribute('action', '/project/edit/4');
        detailFrm.submit();
    }

</script>