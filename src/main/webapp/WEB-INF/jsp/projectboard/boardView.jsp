<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 상주, 외주마다 항목이 바뀌어야할듯 --%>
<%-- 레이아웃 깨지는 문제 --%>
<%-- 파일 다운로드 --%>
<c:set var="ppno" value="${pvo.pno}"/>
<c:set var="uuid" value="${UID}"/>
    <div id="main"  class=" bg-light" style="height: auto;">
    <div class="contentsWidth center">
        <div class="row">
            <!--left section-->
            <div class="col-9 bg-white border mt-5" style="border-radius: 5px;">
                <div class=" bg-white" style=" margin-top:30px;">
                    <div id="title"><!-- 제목 -->

                        <div class="col-12"><!--제목 제목 -->
                            <div class="row">
                                <div class="status-mark recruting-mark; text-center" style="background: green; height: 21px; width: 58px; font-size: 13px; color: white; font-weight: bold">모집중</div>
                                <div class="status-mark recruting-mark; text-center" style="background: #38A3C6; height: 21px; width: 58px; font-size: 13px; color: white; font-weight: bold; margin-left:5px">NEW</div>
                                <p style="margin-left:540px; color:gray">등록 일자 ${pvo.regdate}</p>
                                <h3>${pvo.title}</h3>
                                <div>
                                    <span class="status-mark recruting-mark; text-center text-info" style="background:#e8faff;  width: 90px; height: 30px">
                                        ${pvo.type}
                                    </span>
                                    <c:forEach var="item" items="${fn: split(pvo.area, '/')}">
                                    <span style="color:gray; margin-left:10px">${item}</span>
                                    </c:forEach>
<%--                                    <span style="color:gray; margin-left:10px">워드프레스</span>--%>
                                </div>
                            </div>

                        </div><!--제목 제목 -->
                        <hr>
                        <div class="col-12" style="font-size:14px;"><!-- 금액 /  조건 / 지원자수 + 금액조율 텍스트 -->

                            <div class="row">
                                <div style="border:1px solid #e6ebef; border-radius:7px; width: 330px; height: 65px; background: white;">
                                    <p class="row" style="margin-top:17px;margin-left:3px; margin-right: -3px;">
                                        <span style="color:gray" class="col-6 text-left"><i class="bi bi-clock bidragup"></i>&nbsp;예상 금액</span>
                                        <span class="col-6 text-right" style="">1,000,000원</span>
                                    </p>
                                </div>

                                <div style="border:1px solid #e6ebef; border-radius:7px; width: 231px; height: 65px;margin-left:10px; background: white;">
                                    <p class="row" style="margin-top:17px;margin-left:3px;margin-right: -3px;">
                                        <span style="color:gray" class="col-6 text-left"><i class="bi bi-clock bidragup"></i>&nbsp;예상 기간&nbsp;&nbsp;</span>
                                        <span class="col-6 text-right" style="">${pvo.projectTerm}일</span>
                                    </p>
                                </div>

                                <div style="border:1px solid #e6ebef; border-radius:7px; width: 231px; height: 65px;margin-left:10px; background: white;">
                                    <p class="row" style="margin-top:17px;margin-left:3px;margin-right: -3px;">
                                        <span style="color:gray" class="col-6 text-left"><i class="bi bi-person"></i> &nbsp;지원자&nbsp;</span>
                                        <span class="col-6 text-right" style="">${pvo.suppoters}</span>
                                    </p>
                                </div>

                            </div>
                            <c:if test="${not empty pvo.budgetNego}">
                            <div class="row border" style="margin-top:15px; height: 35px; background: #f7fafc"><span style="color:gray; font-size:13px; margin: 5px auto;"><i class="bi bi-info-circle">&nbsp;&nbsp;&nbsp;</i>금액 조율이 가능한 프로젝트 입니다.</span></div>
                            </c:if>
                        </div><!-- 금액 /  조건 / 지원자수 + 금액조율 텍스트 -->

                        <div class="col-12 mt-5"style="font-size:14px"><!-- 요구사항 요약 -->
                            <div class="row" >
                                <span class="" style="width:120px; color:gray"><i class="bi bi-clock bidragup" >&nbsp;&nbsp;</i>모집 마감일</span>
                                <span class="col-10 mb-3" style="">${pvo.deadLine}</span>
                            </div>
                            <div class="row">
                                <span class="" style="width:120px; color:gray"><i class="bi bi-calendar bidragup" >&nbsp;&nbsp;</i>예상 시작일</span>
                                <span class="col-10 mb-3" style="">${pvo.projectStartDate}</span>
                            </div>
                            <div class="row">
                                <span class="" style="width:120px; color:gray"><i class="bi bi-archive bidragup" >&nbsp;&nbsp;</i>구인 유형</span>
                                <span class="col-10 mb-3" style="">${pvo.hireType}</span>
                            </div>
                            <div class="row">
                                <span class="" style="width:120px; color:gray"><i class="bi bi-tag bidragup" >&nbsp;&nbsp;</i>진행 분류</span>
                                <span class="col-10 mb-3" style="">${pvo.purpose}</span>
                            </div>
                            <div class="row">
                                <span class="" style="width:120px; color:gray"><i class="bi bi-file-earmark-text bidragup" >&nbsp;&nbsp;</i>기획 상태</span>
                                <span class="col-10 mb-3" style="">${pvo.projectStatus} ${pvo.detailStatus}</span>
                            </div>
                            <div class="row">
                                <span class="" style="width:120px; color:gray"><i class="bi bi-gear bidragup" >&nbsp;&nbsp;</i>매니징 경험</span>
                                <span class="col-10 mb-3" style="">${pvo.managingExperience}</span>
                            </div>
                            <div class="row">
                                <span class="" style="width:120px; color:gray"><i class="bi bi-building bidragup" >&nbsp;&nbsp;</i>인력 상황</span>
                                <span class="col-10 mb-3" style="">${pvo.employeeState}</span>
                            </div>

                        </div><!-- 요구사항 요약 -->
                    </div>
                    <hr>

                    <!-- 본문 -->
                    <div id="contents " class="mt-5">
                        <div class="row col-12 ">
                            <h5 class="row col-12 font-weight-bold">업무내용</h5>
                            <p style="font-size:15px;" class="col-12">
                                <c:set var="rowArr" value="${fn: split(pvo.detailTask, ':')}"/>
                                <textarea cols="50" rows="30" style="border:0;" readonly class="col-12"><c:forEach var="item" items="${rowArr}"> ${item}</c:forEach></textarea>

                            </p>
                            <p class="row col-12 font-weight-bold mt-3" style="font-size:16px;">관련 기술&nbsp;&nbsp;&nbsp;<span class="badge ml-2" style="background: #eeeeee; color:gray; max-height: 18px; position:relative; top:3px;">${pvo.skillStack}</span></p>

                        </div>
                        <hr>
                        <h5 class="row col-12 font-weight-bold mt-4">모집요강</h5>
                        <c:if test="${not empty pvo.prerequisites}">
                            <c:forEach var="item" items="${pvo.prerequisites}">
                                <p style="font-size:16px;" class="mt-4"><i class="bi bi-check text-info"></i>&nbsp;${item}<br></p>
                            </c:forEach>
                        </c:if>
                        <c:if test="${not empty pvo.futurePlan}">
                            <c:forEach var="item" items="${pvo.futurePlan}">
                            <p style="font-size:16px;" class=""><i class="bi bi-plus"></i>&nbsp;${item}<br></p>
                            </c:forEach>
                        </c:if>
                        <hr>
                        <h5 class="row col-12 font-weight-bold mt-4">미팅</h5>
                        <c:if test="${pvo.type ne  '상주'}">
                        <div class="col-12 mt-3"style="font-size:14px">
                            <div class="row" >
                                <span class="" style="width:120px; color:gray">사전 미팅 방식</span>
                                <span class="col-10 mb-3" style="">${pvo.preMeetingType}</span>
                            </div>
                            <div class="row" >
                                <span class="" style="width:120px; color:gray">진행 중 미팅</span>
                                <span class="col-10 mb-3" style="">${pvo.meetingType}</span>
                            </div>
                            <div class="row" >
                                <span class="" style="width:120px; color:gray">클라이언트 위치</span>
                                <span class="col-10 mb-3" style="">${pvo.workPlace}</span>
                            </div>
                        </div>
                        </c:if>
                        <c:if test="${pvo.type eq  '상주'}">
                            <div class="col-12 mt-3"style="font-size:14px">
                                <div class="row" >
                                    <span class="" style="width:120px; color:gray">사전 미팅 방식</span>
                                    <span class="col-10 mb-3" style="">${pvo.preMeetingType}</span>
                                </div>
                                <div class="row" >
                                    <span class="" style="width:120px; color:gray">클라이언트 위치</span>
                                    <span class="col-10 mb-3" style="">${pvo.workPlace}</span>
                                </div>
                            </div>
                        <hr>
                        <h5 class="row col-12 font-weight-bold mt-4">근무환경</h5>
                            <div class="col-12 mt-3"style="font-size:14px">
                                <div class="row" >
                                    <span class="" style="width:120px; color:gray">근무지</span>
                                    <span class="col-10 mb-3" style="">${pvo.workPlace}</span>
                                </div>
                                <div class="row" >
                                    <span class="" style="width:120px; color:gray">근무시간</span>
                                    <span class="col-10 mb-3" style="">${pvo.workingHours}</span>
                                </div>
                                <c:set var="rowArr" value="${fn: split(pvo.extraWorkAndSupport, '/')}"/>
                                    <div class="row" >
                                        <span class="" style="width:120px; color:gray">야간근무</span>
                                        <span class="col-10 mb-3" style="">${rowArr[0]}</span>
                                    </div>
                                <div class="row" >
                                    <span class="" style="width:120px; color:gray">주말근무</span>
                                    <span class="col-10 mb-3" style="">${rowArr[1]}</span>
                                </div>
                                <div class="row" >
                                    <span class="" style="width:120px; color:gray">장비지원</span>
                                    <span class="col-10 mb-3" style="">${rowArr[2]}</span>
                                </div>
                                <div class="row" >
                                    <span class="" style="width:120px; color:gray">개인장비 사용</span>
                                    <span class="col-10 mb-3" style="">${rowArr[3]}</span>
                                </div>
                                <div class="row" >
                                    <span class="" style="width:120px; color:gray">식사지원</span>
                                    <span class="col-10 mb-3" style="">${rowArr[4]}</span>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${not empty pvo.fname1}">
                            <hr>
                            <h5 class="row col-12 font-weight-bold mt-4">참고 자료</h5>
                            <div class="col-12 mt-3"style="font-size:14px">
                                <div class="row" >
                                    <span class="" style="width:120px; color:gray">파일 :</span>
                                    <span class="col-10 mb-3" style="">${pvo.fname1} ${pvo.fsize1}KB</span>
                                </div>
                            </div>
                            <c:if test="${not empty pvo.fname2}">
                                <div class="col-12 mt-3"style="font-size:14px">
                                    <div class="row" >
                                        <span class="" style="width:120px; color:gray">파일2 :</span>
                                        <span class="col-10 mb-3" style="">${pvo.fname2} ${pvo.fsize2}KB</span>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${not empty pvo.fname3}">
                                <div class="col-12 mt-3"style="font-size:14px">
                                    <div class="row" >
                                        <span class="" style="width:120px; color:gray">파일2 :</span>
                                        <span class="col-10 mb-3" style="">${pvo.fname3} ${pvo.fsize3}KB</span>
                                    </div>
                                </div>
                            </c:if>
                        </c:if>
                    </div>
                </div>
            </div>

            <div class="col-3  mt-5" >
                <div class="floatMenu" ><!-- 플로팅 -->
                    <div class="col-12 border text-center" style="height: 200px; background: #eeeeee; border-radius: 5px" >
                        <button type="button" class="btn text-white mt-3" style="margin:0 auto; width:200px; height:50px; background: #02a878" id="gogo">프로젝트 지원하기</button>
                        <button type="button" class="btn bg-white mt-3" style="margin:0 auto; width:200px; height:50px; color:gray"><i class="bi bi-heart"></i>&nbsp;&nbsp;관심프로젝</button>
                        <hr>
                        <i class="bi bi-heart" style="color:gray;">&nbsp;지원자 :${pvo.suppoters}</i>
                    </div>
                    <c:if test="${not empty UID}">
                    <div class="row  mt-4" style="position: relative; right:-20px; font-size:14px;" id="check2">
                        <img src="/img/default_avatar_c.png" style="display: inline; width: 50px; height: 50px; border-radius: 50px;">
                        <p class="ml-2" style="font-size:15px;" >${UID} &nbsp;&nbsp;&nbsp;<span class="badge" style="background: #e3edfa; color:#336fac" >member</span><br>
                            <img src="/img/icon-badge-verification.png" style="width: 16px; height: 14px;">&nbsp;인증완료&nbsp;&nbsp;<img src="/img/icon-badge-client-pro.png" style="width: 16px; height: 14px;">&nbsp;우수회원</p>
                    </div>

                    <div class="row  mt-2" style="position: relative; right:-20px;">
                        <span style="font-size:12px; color:#777777">Ex)21년간 웹에이전시를 운영해온 회사입니다.<br></span>
                    </div>

                    <hr>

                    <div class="row  mt-2" style="position:relative; right: -20px">
                        <img src="/img/review_icon.png" style="height: 15px;">
                        <p style="font-size:14px; position: relative; top:-3px;">&nbsp;&nbsp;5.0&nbsp;<span style="color:gray">(1)</span></p>
                        <a href="#" style="font-size:14px;  position: relative; top:-3px; font-weight: bold" class="text-info ml-5">평가보기<i class="bi bi-chevron-right"></i></a>
                    </div>
                    <hr style="margin-top:-5px;">

                    <div class="row mt-2" style="font-size:14px;">
                        <div class="col-6 text-left" style="color:gray;">진행된 프로젝트</div><div class="col-6 text-right">준비중</div>
                        <div class="col-6 text-left mt-3" style="color:gray;">계약한 프로젝트</div><div class="col-6 text-right mt-3">준비중</div>

                        <div class="col-6 text-left mt-2" style="color:#AEAEAE; border-left:2px solid #e0e0e0; position:relative; right: -15px">진행중인 프로젝트</div><div class="col-6 text-right mt-2">준비중</div>
                        <div class="col-6 text-left pt-2" style="color:#AEAEAE; border-left:2px solid #e0e0e0; position:relative; right: -15px; ">완료한 프로젝트</div><div class="col-6 text-right pt-2" style="">준비중</div>

                        <div class="col-6 text-left mt-3" style="color:gray;">프로젝트 계약률</div><div class="col-6 text-right mt-3">준비중</div>
                        <div class="col-6 text-left mt-3" style="color:gray;">누적 완료금</div><div class="col-6 text-right mt-3">준비중</div>
                    </div>
                    </c:if>
                    <c:if test="${empty UID}">
                        <div class="col-12 border text-center" style="height: 200px; background: #eeeeee; border-radius: 5px; margin-top:25px;" >
                            <div class="mt-4" id="check">${UID}</div>
                            <button type="button" class="loginbtn1 btn text-white mt-3" style="margin:0 auto; width:200px; height:50px; background: #2099bb">로그인</button>
                            <button type="button" class="joinbtn btn mt-3" style="margin:0 auto; width:200px; height:50px; color:white; background: #a1a6ad">&nbsp;&nbsp;회원가입</button>
                        </div>
                    </c:if>
                    <input type="text" value="${ppno}" id="hiddenpno" hidden>
                    <input type="text" value="${uuid}"  id="hiddenid" hidden>

                </div><!--floatingg-->

            </div>


        </div>
    </div>

</div><!-- 메인 -->
