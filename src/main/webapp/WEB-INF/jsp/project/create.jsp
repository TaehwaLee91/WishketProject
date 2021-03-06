<%@ page pageEncoding="UTF-8" %>

<link rel="stylesheet" href="/css/newProject.css">

<div id="main" class="bg-light">
    <div class="container">
        <div class= "row">
            <div class="col enroll-banner">
                <img class="img-item" src="/img/alert_icon_info.png" width="20" height="20">
                <p style="display: inline">수주할 프로젝트를 찾는다면 파트너로 <a class="link-text" href="#" style="font-weight: 500;">회원가입</a>하세요!</p>
            </div>
        </div>

        <div class="row enroll-row">
            <div class="col-3">
                <div class="status-main-menu-header">
                    <a href="#" class="backBtn">
                        <img class="img-item" src="/img/btn_icon_back_s.png"/>
                        <p style="display: inline;">나가기</p>
                    </a>
                    <p class="page-title">프로젝트 등록</p>
                </div>
                <div class="status-main-menu">
                    <p class="main-menu-title main-menu-active">프로젝트 정보 등록</p>
                    <p class="main-menu-title">회원가입</p>
                    <p class="main-menu-title">클라이언트 기본 정보</p>
                    <p class="main-menu-title">프로젝트 등록 완료</p>
                </div>
            </div>
            <div class="col">
                <div class="card card-body" style="background: white !important;">
                    <form id="enrollFrm">
                        <div class="form-input-section">
                            <div class="form-title">
                                <p>프로젝트 정보 등록</p>
                                <hr>
                            </div>
                            <div class="form-content">
                                <p class="form-content-title">프로젝트 진행 방식 <span class="required">*</span></p>
                                <p>프로젝트에 적합한 작업자를 모집하기 위해 프로젝트 진행 방식을 선택해 주세요.</p>
                                <div class="form-row">
                                    <label class="card col-3 project-select-card">
                                        <input id="projectBased" name="type" type="radio" value="외주(도급)" onclick="checkRadio()"/>
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_project_type_1_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_project_type_1_c.png" style="display: none;"/>
                                            <p class="emphasize">프로젝트 단위로 계약</p>
                                            <p class="caption-1">외주</p>
                                        </div>
                                    </label>
                                    <label class="card col-3 project-select-card">
                                        <input id="termBased" name="type" type="radio" value="상주" onclick="checkRadio()"/>
                                        <div class="select-card-content">
                                            <img class="select-card-img inherit-select-card-img" src="/img/select_card_icon_project_type_2_d.png"/>
                                            <img class="select-card-img active-select-card-img" src="/img/select_card_icon_project_type_2_c.png" style="display: none;"/>
                                            <p class="emphasize">인력을 기간 단위로 구인</p>
                                            <p class="caption-1">상주(근무 장소 지정)</p>
                                        </div>
                                    </label>
                                </div>
                                <div style="margin-top: 16px; position: relative;">
                                    <img class="img-item" src="/img/alert_icon_info.png"/>
                                    <p class="caption-1" style="display: inline-block;">
                                        선택하신 프로젝트 진행 방식에 따라 입력해야 하는 항목들이 변경됩니다.
                                    </p>
                                </div>
                            </div>

                            <div class="form-content">
                                <div class="form-content-title">프로젝트 진행 분류 <span class="required">*</span></div><br/>
                                <label class="form-group form-check">
                                    <input type="radio" class="form-check-input" name="purpose" value="신규프로젝트">
                                    <p>신규 프로젝트를 진행하려 합니다.</p>
                                </label>
                                <label class="form-group form-check">
                                    <input type="radio" class="form-check-input" name="purpose" value="기존프로젝트">
                                    <p>운영 중인 서비스의 리뉴얼 또는 유지보수를 하려 합니다.</p>
                                </label>
                            </div>
                            <hr/>
                            <div class="bottomBtns text-right">
                                <button id="enrollNextBtn" class="btn btn-primary" onclick="clickNextBtn()">계속</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div> <!-- div container-->
</div> <!-- main -->
<script>

    function checkRadio(){
        var radioCards = document.querySelectorAll('input[name="type"]');
        for(var i = 0; i < radioCards.length; i++){
            if(radioCards[i].checked){
                var parentNode = radioCards[i].parentNode;
                parentNode.setAttribute('style', 'background: #E7EEFF')
                var parentImg = parentNode.getElementsByTagName('div')[0];
                var imgTag = parentImg.getElementsByTagName('img');
                imgTag[0].setAttribute('style', 'display: none');
                imgTag[1].removeAttribute('style');
            } else{
                var parentNode = radioCards[i].parentNode;
                parentNode.removeAttribute('style')
                var parentImg = parentNode.getElementsByTagName('div')[0];
                var imgTag = parentImg.getElementsByTagName('img');
                imgTag[0].removeAttribute('style');
                imgTag[1].setAttribute('style', 'display: none');
            }
        }
    }

    function clickNextBtn(){
        var type = document.getElementsByName('type');
        var purpose = document.getElementsByName('purpose');

        // 유효성 검사
        var checked = false;
        for(var i = 0; i < type.length; i++){
            if(type[i].checked == true){
                checked = true;
                break;
            }
        }

        var checked2 = false;
        for(var i = 0; i < purpose.length; i++){
            if(purpose[i].checked == true){
                checked2 = true;
                break;
            }
        }

        if(checked == false){
            alert('프로젝트 진행 방식을 선택해주세요.');
            event.preventDefault();
        } else if(checked2 == false){
            alert('프로젝트 진행 방식을 선택해주세요.');
            event.preventDefault();
        } else {
            var enrollFrm = document.getElementById('enrollFrm');
            enrollFrm.setAttribute('method', 'POST');
            enrollFrm.setAttribute('action', '/project/edit/1');
            enrollFrm.submit();
        }

    }

</script>

