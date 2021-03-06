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
                        <p class="status-sub-menu-title">
                            5. 미팅 및 근무 환경<img class="status-mark" src="/img/tab_icon_check_on_c.png" style="float: right">
                        </p>
                        <p class="status-sub-menu-title">
                            6. 모집 요건<img class="status-mark" src="/img/tab_icon_check_on_c.png" style="float: right">
                        </p>
                        <p class="status-sub-menu-title sub-menu-active">
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
                    <form id="additionalFrm">
                        <div class="form-input-section">
                            <div class="form-title">
                                <p>추가 정보</p>
                                <hr>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">구인 유형 <span class="required">*</span></p>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="hireType" value="사내 프로젝트 인력 구인">사내 프로젝트에 필요한 인력을 구인합니다.</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="hireType" value="수주 프로젝트 인력 구인">발주처에게서 수주한 프로젝트에 필요한 인력을 구인합니다.</label>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">프로젝트 인력 상황 <span class="required">*</span></p>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="employeeState" value="프로젝트 경험이 있는 인력 있음">IT 프로젝트 경험이 있는 인력이 있습니다.</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="employeeState" value="프로젝트 경험이 있는 인력 없음">IT 프로젝트 경험이 있는 인력이 없습니다.</label>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">프로젝트 매니징 겸험 <span class="required">*</span></p>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="managingExperience" value="프로젝트 매니징 경험 있음">프로젝트 매니징 경험이 있습니다.</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="managingExperience" value="프로젝트 매니징 경험 없음">없습니다.</label>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">향후 계획</p>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="checkbox" class="form-check-input" name="futurePlan" value="유지보수를 위한 아웃소싱 계획">향후 유지보수를 위한 아웃소싱 계획이 있습니다.</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="checkbox" class="form-check-input" name="futurePlan" value="고도화를 위한 아웃소싱 계획">향후 고도화를 위한 아웃소싱 계획이 있습니다.</label>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">프로젝트 우선순위</p>
                                <p>프로젝트 진행에 가장 중요한 요소 1가지를 선택해주세요. 위시켓에서 해당 요소를 고려하여 프로젝트 진행을 도와드립니다.</p>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="projectPriority" value="완성도 높은 산출물">완성도 높은 산출물을 받아보는 것이 가장 중요합니다.</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="projectPriority" value="최대한 낮은 금액">최대한 낮은 금액으로 제안받는 것이 가장 중요합니다.</label>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label"><input type="radio" class="form-check-input" name="projectPriority" value="프로젝트 기간 준수">프로젝트 기간 준수가 가장 중요하며, 가능하다면 기간이 단축되어야 합니다.</label>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">관심 상품</p>
                                <p>프로젝트에 필요한 상품을 체크해주시면, 위시켓 스토어에서 저렴하게 구매를 도와드립니다.</p>
                                <div class="form-row">
                                    <div class="card col-3 project-select-card">
                                        <input name="category" type="checkbox" value="develop">
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_job_category_1_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_job_category_1_c.png" style="display: none;"/>
                                            <p>서버 또는 클라우드</p>
                                        </div>
                                    </div>
                                    <div class="card col-3 project-select-card">
                                        <input name="category" type="checkbox" value="design">
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_job_category_2_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_job_category_2_c.png" style="display: none;"/>
                                            <p>도메인</p>
                                        </div>
                                    </div>
                                    <div class="card col-3 project-select-card">
                                        <input name="category" type="checkbox" value="plan">
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_job_category_3_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_job_category_3_c.png" style="display: none;"/>
                                            <p>SSL 인증서</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="card col-3 project-select-card">
                                        <input name="category" type="checkbox" value="develop">
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_job_category_1_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_job_category_1_c.png" style="display: none;"/>
                                            <p>보안 솔루션</p>
                                        </div>
                                    </div>
                                    <div class="card col-3 project-select-card">
                                        <input name="category" type="checkbox" value="design">
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_job_category_2_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_job_category_2_c.png" style="display: none;"/>
                                            <p>쇼핑몰 솔루션</p>
                                        </div>
                                    </div>
                                    <div class="card col-3 project-select-card">
                                        <input type="checkbox" value="plan">
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_job_category_3_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_job_category_3_c.png" style="display: none;"/>
                                            <p>메시지 & 메일</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="card col-3 project-select-card">
                                        <input type="checkbox" value="develop">
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_job_category_1_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_job_category_1_c.png" style="display: none;"/>
                                            <p>모바일 호환성 테스트</p>
                                        </div>
                                    </div>
                                    <div class="card col-3 project-select-card">
                                        <input type="checkbox" value="design">
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_job_category_2_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_job_category_2_c.png" style="display: none;"/>
                                            <p>전자 결제(PG)</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
    function clickNextBtn(){

        var additionalFrm = document.getElementById('additionalFrm');
        additionalFrm.setAttribute('method', 'POST');
        additionalFrm.setAttribute('action', '/project/edit/8');
        additionalFrm.submit();
    }
</script>