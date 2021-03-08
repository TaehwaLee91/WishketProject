<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
                        <p class="status-sub-menu-title">
                            7. 추가 정보<img class="status-mark" src="/img/tab_icon_check_on_c.png" style="float: right">
                        </p>
                        <p class="status-sub-menu-title sub-menu-active">
                            8. 검토 및 수정<img class="status-mark" src="/img/tab_icon_check_on_c.png" style="float: right">
                        </p>
                    </div>
                    <p>회원가입</p>
                    <p>클라이언트 기본 정보</p>
                    <p>프로젝트 등록 완료</p>
                </div>
            </div> <!-- sidebar -->
            <div class="col">
                <div class="card card-body" style="background: white !important;">
                    <form id="finalFrm">
                        <div class="form-input-section">
                            <div class="form-title">
                                <p>검토 및 수정</p>
                                <hr>
                            </div>
                            <div class="form-content">
                                <p class="font-weight-bolder">프로젝트 진행 방식 <span class="required">*</span></p>
                                <p>${pvo.type}</p>
                            </div>
                            <div class="form-content">
                                <p class="font-weight-bolder">프로젝트 진행 분류 <span class="required">*</span></p>
                                <p>${pvo.purpose}</p>
                            </div>
                            <hr>
                            <h5>기본 정보</h5>
                            <div class="form-content">
                                <p class="font-weight-bolder">프로젝트 제목 <span class="required">*</span></p>
                                <p>${pvo.title}</p>
                            </div>
                            <c:if test="${pvo.type eq '상주'}">
                            <div class="form-content">
                                <p class="font-weight-bolder">산업 분야 <span class="required">*</span></p>
                                <p>${pvo.industryArea}</p>
                            </div>
                            </c:if>
                            <div class="form-content">
                                <p class="font-weight-bolder">프로젝트 카테고리 <span class="required">*</span></p>
                                <p>${pvo.category}</p>
                            </div>
                            <div class="form-content">
                                <p class="font-weight-bolder">프로젝트 분야 <span class="required">*</span></p>
                                <p>${pvo.area}</p>
                            </div>
                            <c:if test="${pvo.type eq '상주'}">
                            <div class="form-content">
                                <p class="font-weight-bolder">담당 직무 <span class="required">*</span></p>
                                <p>${pvo.position}</p>
                            </div>
                            </c:if>
                            <hr>
                            <h5>준비 상태</h5>
                            <div class="form-content">
                                <c:choose>
                                    <c:when test="${pvo.type eq '상주'}">
                                        <p class="font-weight-bolder">프로젝트 상태 <span class="required">*</span></p>
                                    </c:when>
                                    <c:otherwise>
                                        <p class="font-weight-bolder">기획 상태 <span class="required">*</span></p>
                                    </c:otherwise>
                                </c:choose>
                                <p>${pvo.projectStatus}</p>
                            </div>
                            <c:if test="${pvo.detailStatus ne ''}">
                                <div class="form-content">
                                    <p class="font-weight-bolder">상세 기획 상태</p>
                                    <p>${pvo.detailStatus}</p>
                                </div>
                            </c:if>
                            <hr>
                            <h5>프로젝트 상세</h5>
                            <div class="form-content">
                                <p class="font-weight-bolder">상세 업무 내용 <span class="required">*</span></p>
                                <p>${pvo.detailTask}</p>
                            </div>
                            <c:if test="${pvo.skillStack ne null}">
                                <div class="form-content">
                                    <p class="font-weight-bolder">관련 기술</p>
                                    <p>${pvo.skillStack}</p>
                                </div>
                            </c:if>
                            <hr>
                            <h5>예산 및 일정</h5>
                            <div class="form-content">
                                <p class="font-weight-bolder">지출 가능 예산 <span class="required">*</span></p>
                                <c:choose>
                                    <c:when test="${pvo.type eq '상주'}">
                                        <c:choose>
                                            <c:when test="${fn: contains(pvo.availableBudget, '*')}">
                                                <c:set var="rowArr" value="${fn: split(pvo.availableBudget, '*')}"/>
                                                <c:forEach var="row" items="${rowArr}">
                                                    <c:set var="col" value="${fn: split(row, '/')}"/>
                                                    <div>
                                                        <p>경력: ${col[0]}, 인원: ${col[1]}명, 1명당 월지급액: ${col[2]}원</p>
                                                    </div>
                                                </c:forEach>
                                            </c:when>
                                            <c:otherwise>
                                               <c:set var="col" value="${fn: split(pvo.availableBudget, '/')}"/>
                                                <div>
                                                    <p>경력: ${col[0]}, 인원: ${col[1]}명, 1명당 월지급액: ${col[2]}원</p>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                    <c:otherwise>
                                        <p>${pvo.availableBudget} 원</p>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="form-content">
                                <c:choose>
                                    <c:when test="${pvo.type eq '상주'}">
                                        <p class="font-weight-bolder">희망 근무 시작일 <span class="required">*</span></p>
                                    </c:when>
                                    <c:otherwise>
                                        <p class="font-weight-bolder">예상 시작일 <span class="required">*</span></p>
                                    </c:otherwise>
                                </c:choose>
                                <p>${pvo.projectStartDate}</p>
                            </div>
                            <div class="form-content">
                                <p class="font-weight-bolder">예상 진행 기간 <span class="required">*</span></p>
                                <p>${pvo.projectTerm} 일</p>
                            </div>
                            <hr>
                            <h5>미팅 및 근무 환경</h5>
                            <c:choose>
                                <c:when test="${pvo.type eq '상주'}">
                                    <div class="form-content">
                                        <p class="font-weight-bolder">근무 위치 <span class="required">*</span></p>
                                        <p>${pvo.workPlace}</p>
                                    </div>
                                    <div class="form-content">
                                        <p class="font-weight-bolder">근무 시간 <span class="required">*</span></p>
                                        <p>${pvo.workingHours}</p>
                                    </div>
                                    <div class="form-content">
                                        <p class="font-weight-bolder">휴게 시간 <span class="required">*</span></p>
                                        <p>${pvo.breakTimes}</p>
                                    </div>
                                    <div class="form-content">
                                        <p class="font-weight-bolder">추가 근무 및 지원 <span class="required">*</span></p>
                                        <p>${pvo.extraWorkAndSupport}</p>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="form-content">
                                        <p class="font-weight-bolder">진행중 미팅 <span class="required">*</span></p>
                                        <p>미팅 방식: ${pvo.meetingType}</p>
                                        <p>미팅 주기: ${pvo.meetingTerm}</p>
                                    </div>
                                    <div class="form-content">
                                        <p class="font-weight-bolder">클라이언트 위치 <span class="required">*</span></p>
                                        <p>${pvo.workPlace}</p>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                            <hr>
                            <h5>모집 요건</h5>
                            <div class="form-content">
                                <p class="font-weight-bolder">지원자 모집 마감일 <span class="required">*</span></p>
                                <p>${pvo.deadLine}</p>
                            </div>
                            <div class="form-content">
                                <p class="font-weight-bolder">지원사업 여부 <span class="required">*</span></p>
                                <p>${pvo.supportBusiness}</p>
                            </div>
                            <c:if test="${pvo.prerequisites ne ''}">
                                <div class="form-content">
                                    <p class="font-weight-bolder">지원자 필수 요건</p>
                                    <p>${pvo.prerequisites}</p>
                                </div>
                            </c:if>
                            <c:if test="${pvo.question ne ''}">
                                <div class="form-content">
                                    <p class="font-weight-bolder">파트너 지원 전 질문</p>
                                    <p>${pvo.question}</p>
                                </div>
                            </c:if>
                            <hr>
                            <h5>추가 정보</h5>
                            <c:if test="${pvo.type eq '상주'}">
                                <div class="form-content">
                                    <p class="font-weight-bolder">구인 유형 <span class="required">*</span></p>
                                    <p>${pvo.hireType}</p>
                                </div>
                            </c:if>
                            <div class="form-content">
                                <p class="font-weight-bolder">프로젝트 인력 상황 <span class="required">*</span></p>
                                <p>${pvo.employeeState}</p>
                            </div>
                            <div class="form-content">
                                <p class="font-weight-bolder">매니징 경험 <span class="required">*</span></p>
                                <p>${pvo.managingExperience}</p>
                            </div>
                            <c:if test="${pvo.futurePlan ne null}">
                                <div class="form-content">
                                    <p class="font-weight-bolder">향후 계획</p>
                                    <p>${pvo.futurePlan}</p>
                                </div>
                            </c:if>
                            <c:if test="${pvo.projectPriority ne null}">
                                <div class="form-content">
                                    <p class="font-weight-bolder">프로젝트 우선순위</p>
                                    <p>${pvo.projectPriority}</p>
                                </div>
                            </c:if>
                            <c:if test="${pvo.interestProduct ne null}">
                                <div class="form-content">
                                    <p class="font-weight-bolder">관심상품</p>
                                    <p>${pvo.interestProduct}</p>
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
                            <input type="hidden" name="preMeetingType" value="${pvo.preMeetingType}">
                            <input type="hidden" name="meetingType" value="${pvo.meetingType}">
                            <input type="hidden" name="meetingTerm" value="${pvo.meetingTerm}">
                            <input type="hidden" name="workPlace" value="${pvo.workPlace}">
                            <input type="hidden" name="workingHours" value="${pvo.workingHours}">
                            <input type="hidden" name="breakTimes" value="${pvo.breakTimes}">
                            <input type="hidden" name="extraWorkAndSupport" value="${pvo.extraWorkAndSupport}">
                            <input type="hidden" name="deadLine" value="${pvo.deadLine}">
                            <input type="hidden" name="supportBusiness" value="${pvo.supportBusiness}">
                            <input type="hidden" name="prerequisites" value="${pvo.prerequisites}">
                            <input type="hidden" name="question" value="${pvo.question}">
                            <input type="hidden" name="hireType" value="${pvo.hireType}">
                            <input type="hidden" name="employeeState" value="${pvo.employeeState}">
                            <input type="hidden" name="managingExperience" value="${pvo.managingExperience}">
                            <input type="hidden" name="futurePlan" value="${pvo.futurePlan}">
                            <input type="hidden" name="projectPriority" value="${pvo.projectPriority}">
                            <input type="hidden" name="interestProduct" value="${pvo.interestProduct}">
                            <%--  끝 --%>
                            <hr/>
                            <div class="bottomBtns">
                                <span style="float: left;">
                                    <a href="javascript:window.history.back();" class="backBtn">
                                        <img class="img-item" src="/img/btn_icon_back_s.png">
                                        <p>이전</p>
                                    </a>
                                </span>
                                <span style="float: right">
                                    <button id="projectCreateBtn" class="btn btn-primary" onclick="createNewProject()">프로젝트 정보 등록 완료</button>
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
    function createNewProject() {
        var finalFrm = document.getElementById('finalFrm');
        finalFrm.setAttribute('method', 'POST');
        finalFrm.setAttribute('action', '/project/finish');
        finalFrm.submit();
    }
</script>