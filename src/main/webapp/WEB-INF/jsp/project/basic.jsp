<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/css/newProject.css">

<style>
    .checkHidden {
        position: absolute;
        opacity: 0;
        width: 0;
    }
    .project-area-item {
        padding: 5px 15px;
        background: #e3e3e3;
        color: #8a8a8a;
        margin: 5px 2px;
        border-radius: 15px;
        display: inline-block;
    }
</style>
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
                        <p class="status-sub-menu-title sub-menu-active">
                            1. 기본 정보
                        </p>
                        <p class="status-sub-menu-title">
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
                    <form id="basicFrm">
                        <div class="form-input-section">
                            <div class="form-title">
                                <p>기본 정보</p>
                                <hr>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">프로젝트 제목 <span class="required">*</span></p>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="project-title" name="title" placeholder="예) B2B 미디어 커머스 모바일 플랫폼 구축"/>
                                    <label for="project-title" class="col-form-label caption-1">30자 이내로 작성해주세요.</label>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">프로젝트 카테고리 <span class="required">*</span></p>
                                <p>해당하는 프로젝트 카테고리를 모두 선택해 주세요.</p>
                                <div class="form-row">
                                    <label class="card col-3 project-select-card">
                                        <input id="proj-category-develop" name="category" type="checkbox" value="개발" onclick="clickCard(this)">
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_job_category_1_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_job_category_1_c.png" style="display: none;"/>
                                            <p>개발</p>
                                        </div>
                                    </label>
                                    <label class="card col-3 project-select-card">
                                        <input id="proj-category-design" name="category" type="checkbox" value="디자인" onclick="clickCard(this)">
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_job_category_2_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_job_category_2_c.png" style="display: none;"/>
                                            <p>디자인</p>
                                        </div>
                                    </label>
                                    <label class="card col-3 project-select-card">
                                        <input id="proj-category-plan" name="category" type="checkbox" value="계획" onclick="clickCard(this)">
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_job_category_3_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_job_category_3_c.png" style="display: none;"/>
                                            <p>계획</p>
                                        </div>
                                    </label>
                                </div>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">프로젝트 분야 <span class="required">*</span></p>
                                <div class="form-group">
                                    <label class="project-area-item">웹<input type="checkbox" name="area" class="checkHidden" value="웹" onclick="clickCheck(this)"></label>

                                    <label class="project-area-item">애플리케이션<input type="checkbox" name="area" class="checkHidden" value="애플리케이션" onclick="clickCheck(this)"></label>

                                    <label class="project-area-item">커머스,쇼핑몰<input type="checkbox" name="area" class="checkHidden" value="커머스,쇼핑몰" onclick="clickCheck(this)"></label>

                                    <label class="project-area-item">일반 소프트웨어<input type="checkbox" name="area" class="checkHidden" value="일반 소프트웨어" onclick="clickCheck(this)"></label>

                                    <label class="project-area-item">퍼블리싱<input type="checkbox" name="area" class="checkHidden" value="퍼블리싱" onclick="clickCheck(this)"></label>

                                    <label class="project-area-item">워드프레스<input type="checkbox" name="area" class="checkHidden" value="워드프레스" onclick="clickCheck(this)"></label>

                                    <label class="project-area-item">임베디드<input type="checkbox" name="area" class="checkHidden" value="임베디드" onclick="clickCheck(this)"></label>

                                    <label class="project-area-item">제품<input type="checkbox" name="area" class="checkHidden" value="제품" onclick="clickCheck(this)"></label>

                                    <label class="project-area-item">게임<input type="checkbox" name="area" class="checkHidden" value="게임" onclick="clickCheck(this)"></label>

                                    <label class="project-area-item">기타<input type="checkbox" name="area" class="checkHidden" value="기타" onclick="clickCheck(this)"></label>
                                </div>
                            </div>

                            <input type="hidden" name="type" value="${pvo.type}">
                            <input type="hidden" name="purpose" value="${pvo.purpose}">

                        </div>
                        <hr/>
                        <div class="bottomBtns text-right">
                            <button id="basicNextBtn" class="btn btn-primary" onclick="clickNextBtn()">계속</button>
                        </div>
                    </form>
                </div>
            </div>
        </div> <!-- row -->
    </div> <!-- div container-->
</div> <!-- main -->
<script>


    function clickCheck(box) {
        if(box.checked == true){
            box.parentNode.setAttribute('style', 'background: #BAE9FC');
        } else if(box.checked == false) {
            box.parentNode.removeAttribute('style');
        }
    }

    function clickCard(card) {
        if(card.checked == true){
            var parentNode = card.parentNode;
            parentNode.setAttribute('style', 'background: #BAE9FC')
            var parentImg = parentNode.getElementsByTagName('div')[0];
            var imgTag = parentImg.getElementsByTagName('img');
            imgTag[0].setAttribute('style', 'display: none');
            imgTag[1].removeAttribute('style');
        } else if(card.checked == false) {
            var parentNode = card.parentNode;
            parentNode.removeAttribute('style')
            var parentImg = parentNode.getElementsByTagName('div')[0];
            var imgTag = parentImg.getElementsByTagName('img');
            imgTag[0].removeAttribute('style');
            imgTag[1].setAttribute('style', 'display: none');
        }
    }

    // 계속버튼 클릭
    function clickNextBtn(){
        var basicFrm = document.getElementById('basicFrm');
        basicFrm.setAttribute('method', 'POST');
        basicFrm.setAttribute('action', '/project/edit/2');
        basicFrm.submit();
    }

</script>