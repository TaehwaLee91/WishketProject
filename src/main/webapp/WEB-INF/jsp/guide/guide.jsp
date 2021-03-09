<%@ page pageEncoding="UTF-8" %>

<style>
    .main {margin: 50px; font-family: 'NotoSansKR', 'serif'; font-size: 16px; color: #616161;
        box-sizing: border-box; padding: 0;line-height: 1rem; -webkit-font-smoothing: antialiased; background-color: #f5f5f5;}

    #navWrapper {position: relative;top: 0;background-color: #ffffff;border-bottom: solid 1px transparent;display: block;}
    .step-nav {position: relative;padding: 18px 64px 0; list-style-position: inside; border-bottom: solid 1px #e0e0e0;}
    .link-wrapper {display: flex; justify-content: space-between;  list-style: none; height: 68px;}
    .link-wrapper li {width: 142px; counter-increment: step-counter;display: list-item;text-align: -webkit-match-parent; list-style: none;}
    .link-wrapper li a:before {content: "0" counter(step-counter);padding-top: 10px;display: block; margin-bottom: 4px; color: #9e9e9e;}
    .link-wrapper li a {display: inline-block; color: #616161;cursor: pointer;}
    .step-selector {position: absolute;bottom: -1px;left: 0;height: 2px; background-color: #212121;
        width: var(--step-selector-width);
        transform: translateX(var(--step-selector-x));
        transition: all 0.4s cubic-bezier(0.19, 1, 0.22, 1);}


    .btn{cursor: pointer; display: inline-block; text-align: center; white-space: nowrap; vertical-align: middle; user-select: none;
        border-radius: 4px; border: none;}

    .guide-section {width: 100%;background: #FFFFFF;border-radius: 4px;box-shadow: 0 2px 8px 0 rgb(0 0 0 / 16%);}
    .cs-box .guide-section .guide-wrapper .guide-contents .contents-box p {display: block;margin-block-start: 1em;margin-block-end: 1em;
        margin-inline-start: 0px;margin-inline-end: 0px;}

    .cs-box .guide-section .guide-wrapper .guide-contents .faq-box {padding: 48px 64px;
        background-color: #f7fafc;display: flex;justify-content: space-between;}

    .cs-box .guide-section .guide-wrapper .guide-contents .faq-box .faq-contents {width: 672px;box-sizing: border-box;
        margin: 0;padding: 0;
        display: block;font-size: 16px;}


    .faq-box:before {content: "자주 묻는 질문"; color: #212121;font-weight: bold; font-size: 18px;line-height: 28px; padding-top: 12px; }

    .dropdown-box .question {background-image: url(/img/use-icon-question-w.png); background-repeat: no-repeat; cursor:
            pointer;color: #212121;font-size: 16px; line-height: 20px;font-weight: 400;}
    .dropdown-box .question:before {
        content: '';display: inline-block;margin-right: 12px;background-size: 20px 20px;height: 20px;width: 20px;vertical-align: text-bottom;
       /* background-image: -webkit-image-set(url(/img/use-icon-down.png) 1x, url(/img/use-icon-down%402x.png) 2x,
        url(/img/use-icon-down%403x.png) 3x);*/}

    .dropdown-box .answer {margin-top: 16px;margin-left: 32px;display: none;color: #424242;word-break: keep-all;
        font-size: 14px; line-height: 24px; font-weight: 400; }


    .cs-box .guide-section .guide-wrapper .guide-contents .vertical-guide {padding: 64px;justify-content: space-between;display: flex;align-items: center;
        box-sizing: border-box; margin: 0; line-height: 1rem; -webkit-font-smoothing: antialiased;}
    .cs-box .guide-section .guide-wrapper .guide-contents .vertical-guide .guide-item {width: 296px; text-align: center; line-height: 1rem;}
    .cs-box .guide-section .guide-wrapper .guide-contents .vertical-guide .guide-item .item-main-contents,
    .cs-box .guide-section .guide-wrapper .guide-contents .vertical-guide .large-guide-item .item-main-contents {color: #212121; word-break: keep-all;}

    p {display: block;margin-block-start: 1em;margin-block-end: 1em;margin-inline-start: 0px;margin-inline-end: 0px;}

    .item-title {font-size: 18px;line-height: 28px;font-weight: bold; color: #212121; margin-bottom: 4px;}
    .item-contents {color: #424242;word-break: keep-all;font-size: 16px;line-height: 1.5rem;font-weight: 400;}

    .cs-box .guide-section .guide-wrapper .guide-contents .contents-box {padding: 80px 0;}
    .cs-box .guide-section .guide-wrapper .guide-contents .guide-with-img {display: flex; align-items: center;}
    .cs-box .guide-section .guide-wrapper .guide-contents .guide-with-img .img-contents-large{margin: 0 80px; box-sizing: border-box}
    .img-title { font-weight: 500; font-size: 24px; line-height: 36px;}
    .img-caption {width: 400px;word-break: keep-all;color: #424242;font-size: 16px;line-height: 26px;font-weight: 400;}}

    .cs-box .guide-section .guide-wrapper .guide-contents .guide-with-img.right {
        flex-direction: row-reverse; display: flex; align-items: center;}

    .horizon-guide {display: flex; align-items: center;}
    .contents-title {text-align: center; color: #212121; font-weight: 500; font-size: 24px; line-height: 36px}
    .contents-subtitle {text-align: center; color: #212121;font-size: 16px;line-height: 26px;font-weight: 400;}
    .img-contents {align-items: baseline; display: flex;}
    .img-contents:before {content: '';  align-self: flex-start;margin: 4px 16px 0 0;
        background-size: 18px 18px;height: 18px; width: 18px;}
    .img-title {font-weight: 500; font-size: 18px; line-height: 28px; color: #212121;
    margin-bottom: 12px;}

    .guide-link-box {
        margin: 48px 64px 0; padding: 20px 32px;border-radius: 8px;box-shadow: 0 1px 4px 0 rgb(0 0 0 / 16%);
        border: solid 1px #e6ebf0;background-color: #FFFFFF;cursor: pointer;
        justify-content: space-between;display: flex;align-items: center;}

    .left-box {display: flex; align-items: center;cursor: pointer;}
    .guide-link{color: #3ba3c7;display: flex;align-items: center; font-weight: 500; font-size: 14px; line-height: 24px;
                cursor: pointer;}

    .guide-link:after {content: '';display: inline-block;background-size: 14px 14px;margin-left: 4px;
        height: 14px;width: 14px;background-image: url(/img/btn-icon-go.png);}

    .link-contents-box {margin-left: 32px; display: block; cursor: pointer;}
    .guide-link-title {font-weight: 500;font-size: 16px; line-height: 26px;}

    .guide-with-img.center {padding: 0 64px;justify-content: space-between;display: flex; align-items: center;}

    .contents-box {padding: 80px 0; display: block;}
    .horizon-contents {margin-left: 12px;}

    .contents-box .contents-link:after {
        content: '';        display: inline-block;
        margin-left: 4px;
        background-size: 14px 14px;
        height: 14px;
        width: 14px;
        background-image: url(/img/btn-icon-go.png)}


</style>



<div class="main">
    <div class="container cs-box" >
        <header style="margin: 20px; display: block; box-sizing: border-box;">
            <div class="flex-box" style="justify-content: space-between; align-items: baseline; display: flex; margin-bottom: 24px;">
                <div>
                    <div class="greeting" style="font-size: 24px; margin-right: 24px; color: #0d0f14;font-family: NotoSansKR">클라이언트 이용방법</div>
                </div>
                <div class="nav-flex-box" style="display: flex;align-items: center;box-sizing: border-box; margin: 0;">
                    <div class="default-input-wishket">
                        <input autocomplete="off" class="search-text" style="width: 350px;height: 35px;display: block;
                                 border-radius: 4px;border: 1px solid #2099bb;font-size: 14px;line-height: 24px;
                                 text-decoration-color: lightgray;
                                 font-weight: 400; background: #fff;padding: 8px 12px 8px 12px;box-sizing: border-box;cursor: text;"
                               data-input-type="text-input" id="searchFaqInput" name="search_text"
                               placeholder="도움이 필요하시거나 궁금한 점을 검색해주세요!" type="text" value=""/>
                    </div>
                    <button class="btn btn-wishket search-submit" style="cursor: pointer;display: inline-block;text-align: center;
                        white-space: nowrap;vertical-align: middle;user-select: none;border-radius: 4px; margin-left: 5px;
                        border: none;background-color: #2099bb;color: #fff;border: #2099bb;" onclick="getFAQList()">검색</button>
                </div>
            </div>

            <nav class="faq-route-nav" style="margin-bottom: 12px;">
                <img alt="faq home icon" style="display: inline-block;width: 20px;height: 20px;margin-right: 3px;
                        vertical-align: text-bottom;" class="faq_home_icon" src="/img/faq-icon-home.png"/>
                <ul class="faq-route-list" style="display: inline-block; list-style: none; padding-left: 2px;">
                    <li style="display:inline; font-size: 16px; font-weight: bold;">
                        <a href="/customer-support/client" style="color: #616161;font-weight: bold; font-size: 14px;inline-height:24px;" >고객센터</a></li>
                    <li style="display:inline;"><img src="/img/faq-icon-right-2.png;"></li>
                    <li style="display:inline;">
                        <a href="/guide/guide" style="color: #616161; font-size: 14px; font-weight: bold; inline-height:24px;">클라이언트 이용방법</a></li>
                </ul>
            </nav>
        </header>

        <section class="guide-section">
            <div id="navWrapper">
                <nav class="step-nav" id="stepNav">
                    <ol class="link-wrapper" style="margin: 0px; padding: 0px; ">
                        <li><a data-target="projectSubmitted" id="projectSubmittedAnchor" onclick="scrollToTarget(this);" class>프로젝트 등록</a></li>
                        <li><a data-target="projectInspection" id="projectInspectionAnchor" onclick="scrollToTarget(this);" class>프로젝트 검수</a></li>
                        <li><a data-target="recruit" id="recruitAnchor" onclick="scrollToTarget(this);" class>지원자 모집</a></li>
                        <li><a data-target="meeting" id="meetingAnchor" onclick="scrollToTarget(this);" class>미팅</a></li>
                        <li><a data-target="contract" id="contractAnchor" onclick="scrollToTarget(this);" class>계약</a></li>
                        <li><a data-target="projectComplete" id="projectCompleteAnchor" onclick="scrollToTarget(this);" class>진행 및 완료</a></li>
                    </ol>
                    <div class="step-selector"></div>
                </nav>
            </div>
            <section class="guide-wrapper" style="box-sizing: border-box;margin: 0; padding: 0;-webkit-font-smoothing: antialiased; display: block;">
                <section class="guide-contents" id="projectSubmitted">
                    <div class="contents-box" style="padding: 80px 0;">
                        <div class="contents-box1" style=" text-align: center">
                            <p class="contents-title" style="font-weight: 500; font-size: 24px;line-height: 36px;">
                                의뢰하고 싶은 프로젝트를 무료로 등록해보세요.</p>
                            <p class="contents-subtitle" style="text-align: center;color: #212121;">프로젝트는 위시켓 매니저와 상담 후 공개됩니다.
                                <br/> 위시켓 매니저와 상담하며 내용을 수정 및 보완할 수 있으니 편하게 작성하세요.</p>
                            <p class="contents-link" style="margin: 24px 0 48px;display: flex;align-items: center;justify-content: center;">
                                <a href="../project/create/" style="color: #3ba3c7; font-weight: 500;">프로젝트 등록하러 가기</a></p>
                            <img alt="guide img" class="center-img" src="/img/use-img-c-1.png"/>
                        </div>

                            <div class="contents-box2" style="text-align: left; margin-left: 120px">
                            <div class="horizon-guide" >
                                <img alt="guide img" src="/img/use-icon-estimate-c.png"/>
                                <div class="horizon-contents">
                                    <p class="question">의뢰하려는 프로젝트의 견적이 궁금하신가요?</p>
                                    <p class="answer">프로젝트를 등록하면 위시켓 매니저가 업무범위에 맞는 적정 금액 및 기간을 무료로 상담해드립니다.</p>
                                </div>
                            </div>
                            <div class="horizon-guide">
                                <img alt="guide img" src="/img/use-icon-idea-c.png"/>
                                <div class="horizon-contents">
                                    <p class="question">아이디어 유출이 걱정되시나요?</p>
                                    <p class="answer">프로젝트는 위시켓 매니저와 사전 상담 후 등록되며, 사전 상담 시 공개하고 싶지 않은 내용은 공개되지 않습니다.</p>
                                </div>
                            </div>
                            <div class="horizon-guide">
                                <img alt="guide img" src="/img/use-icon-info-c.png"/>
                                <div class="horizon-contents">
                                    <p class="question">회사 정보가 공개될까 봐 걱정되시나요?</p>
                                    <p class="answer">회사 정보는 공개되지 않으니 걱정하지 마시고 등록해주세요.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="faq-box">
                        <div class="faq-contents" style="width: 672px;">
                            <div class="dropdown-box">
                                <p class="question">위시켓에서 정부지원사업도 진행이 가능한가요? </p>
                                <p class="answer">가능합니다. 프로젝트 등록하실 때 ‘6. 모집 요건’의 ‘지원사업 여부’에서
                                    ‘네, 정부지원사업 또는 연구 과제입니다.’를 체크해주세요. <br/> 지원사업 요건에 맞는 파트너를 구하고 원활하게 계약할 수 있도록 도와드립니다.
                                </p>
                            </div>
                            <div class="dropdown-box">
                                <p class="question">상주 프리랜서나 기간 단위로도 인력을 구인할 수 있나요? </p>
                                <p class="answer">네. 프로젝트를 등록할 때 프로젝트 진행 방식을 ‘인력을 기간 단위로 구인’을 선택하시면,
                                    그에 맞는 파트너를 구인하실 수 있습니다.
                                </p>
                            </p>
                        </div>
                    </div>
                </section>
                <section class="guide-contents" id="projectInspection">
                    <div class="contents-box">
                        <p class="contents-title">프로젝트 내용을 입력하면 위시켓에서 맞춤 상담해드립니다.</p>
                        <p class="contents-subtitle">입력한 내용을 위시켓 매니저가 파악한 후 현재 상태와 예산, 기한 등
                            클라이언트님의 상황에 맞춰 상담해드립니다.</p>
                        <div class="vertical-guide">
                            <div class="guide-item">
                                <img alt="guide img" src="/img/use-icon-manager-c.png"/>
                                <p class="item-title">요구사항 구체화</p>
                                <p class="item-contents">위시켓 매니저가 클라이언트와 상담을 통해 요구사항 정리를 도와드립니다.</p>
                            </div>
                            <div class="guide-item"><img alt="guide img" src="/img/use-icon-estimate-c-2.png"/>
                                <p class="item-title">견적 가이드라인 제공</p>
                                <p class="item-contents">48,000여 건의 상담 경험의 위시켓 매니저가 요구사항 구체화 및 적정 견적을 안내합니다.</p>
                            </div>
                            <div class="guide-item">
                                <img alt="guide img" src="/img/use-icon-repair-c.png"/>
                                <p class="item-title">프로젝트 내용 보완</p>
                                <p class="item-contents">개발자와 디자이너가 이해하기 쉬운 용어로 프로젝트 내용을 수정해드립니다.</p>
                            </div>
                        </div>
                        <div class="guide-with-img center">
                            <img alt="guide img" src="/img/use-img-c-2.png"/>
                            <div class="img-contents-wrapper">
                                <div class="img-contents">
                                    <div><p class="img-title">프로젝트는 상담 과정을 거친 후<br/>위시켓에 공개됩니다.</p>
                                        <p class="img-caption">위시켓 매니저가 상담한 내용을 토대로<br/>프로젝트 정보를 보완하여 위시켓에 공개합니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="faq-box">
                        <div class="faq-contents">
                            <div class="dropdown-box">
                                <p class="question" >프로젝트 등록 후 상담까지 얼마나 걸리나요?</p>
                                <p class="answer">등록 후 영업일 기준 24시간 이내에 상담 연락을 드립니다.
                                    <br/> 위시켓 매니저가 등록해주신 내용을 확인한 후 맞춤 상담을 드릴 예정이니 잠시만 기다려주세요.</p>
                            </div>
                            <div class="dropdown-box">
                                <p class="question">견적 상담만 받고 싶은데 어떻게 해야 하나요?</p>
                                <p class="answer">프로젝트를 등록하시면 견적 상담을 받아보실 수 있습니다.
                                    <br/> 위시켓과의 상담 후, 프로젝트 진행을 원치 않으시거나 준비 기간이 더 필요한 경우,
                                    프로젝트를 위시켓에 공개하지 않고 보류할 수 있으니 편하게 프로젝트를 등록해주세요.</p>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="guide-contents" id="recruit">
                    <div class="contents-box">
                        <p class="contents-title">프로젝트에 적합한 파트너에게 미팅을 신청해보세요.</p>
                        <p class="contents-subtitle mb64">지원한 파트너 중에서 프로젝트를 함께 할 실력 있는 파트너를 선정해보세요.</p>
                        <div class="guide-with-img left">
                            <img alt="guide img" src="/img/use-img-c-3-1.png"/>
                            <div class="img-contents-wrapper">
                                <div class="img-contents">
                                    <div><p class="img-title">미팅 신청하기</p>
                                        <p class="img-caption">‘지원자 목록’에서 지원자들의 정보를<br/> 한눈에 비교할 수 있습니다.<br/>
                                            마음에 드는 파트너에게 미팅을 신청하세요.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="guide-with-img right" style="flex-direction: row-reverse;">
                            <img alt="guide img" src="/img/use-img-c-3-2.png"/>
                            <div class="img-contents-wrapper">
                                <div class="img-contents">
                                    <div style="display: block;"><p class="img-title">관심 지원자 표시하기, 지원자 숨기기</p>
                                        <p class="img-caption">마음에 드는 지원자를 ‘관심 지원자’에 추가하거나,<br/>
                                            적합하지 않은 지원자는 ‘지원자 숨기기’를<br/> 활용할 수 있습니다. 지원자들을 효율적으로<br/> 검토할 수 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="guide-link-box" data-target="/partners/">
                            <div class="left-box">
                                <img alt="guide img" src="/img/use-banner-icon-request-1.png"/>
                                <div class="link-contents-box"><p class="guide-link-title">‘파트너스 찾기’에서 마음에 드는 파트너를 발견하셨나요?</p>
                                    <p class="guide-link-contents">파트너를 프로젝트에 초대하는 ‘지원 요청’ 기능을 사용해보세요.</p>
                                </div>
                            </div>
                            <a class="guide-link" href="../partnersboard/search/">파트너스 찾기 바로가기</a>
                        </div>
                    </div>
                    <div class="faq-box">
                        <div class="faq-contents">
                            <div class="dropdown-box" >
                                <p class="question">보통 지원자가 몇 명 정도 발생하나요?</p>
                                <p class="answer">평균 24시간 이내에 5명 이상의 지원자를 확인하실 수 있습니다.<br/>
                                    다만, 지원자 수는 프로젝트 카테고리, 난이도에 따라 다르니 참고해주세요.</p>
                            </div>
                            <div class="dropdown-box">
                                <p class="question">미팅 신청은 몇 명까지 가능한가요?</p>
                                <p class="answer">미팅 신청은 최대 2명까지 가능합니다.<br/>
                                    다만, 미팅한 파트너 측의 문제로 프로젝트 진행이 불가능할 경우, 담당 매니저와 상의하에 추가 미팅을 하실 수 있습니다.</p>
                            </div>
                            <div class="dropdown-box">
                                <p class="question">지원자 모집 중인 프로젝트의 금액/기간/내용을 수정하고 싶어요.</p>
                                <p class="answer">담당 매니저에게 연락해주시거나, 사이트 우측 하단의 ‘채팅 문의’에 말씀해주세요.<br/>
                                    내용 수정으로 인해 금액이나 기간, 업무범위 등이 달라져 지원자가 다르게 발생할 수 있을 경우,
                                    프로젝트 재등록이 필요하니 참고해주세요.</p>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="guide-contents" id="meeting">
                    <div class="contents-box"  style="text-align: center;color: #212121;">
                        <p class="contents-title" style="margin-bottom: 12px; text-align: center;color: #212121;font-weight: 500;">
                            프로젝트를 함께 할 실력 있는 파트너인지 확인해보세요.</p>
                        <p class="contents-subtitle" style="text-align: center;color: #212121;font-size: 16px;line-height: 26px; font-weight: 400;">
                            위시켓 매니저와 함께 온/오프라인 미팅을 진행하면서 파트너와 업무를 논의하고 이슈 사항을 체크합니다.</p>

                        <div class="vertical-guide">
                            <div class="guide-item">
                                <img alt="guide img" src="/img/use-icon-meeting-c.png"/>
                                <p class="item-main-contents" >미팅 일정 및 방식을 파트너와 조율해드립니다.</p>
                            </div>
                            <div class="guide-item">
                                <img alt="guide img" src="/img/use-icon-calander-c.png"/>
                                <p class="item-main-contents">업무범위와 금액/기간 협의를<br/> 도와드립니다.</p>
                            </div>
                            <div class="guide-item">
                                <img alt="guide img" src="/img/use-icon-manager-check-c.png"/>
                                <p class="item-main-contents">위시켓 매니저와 함께 필요 항목들을<br/>체크할 수 있습니다.</p>
                            </div>
                        </div>
                        <div class="guide-with-img center" style="padding: 0 64px;justify-content: space-between;
                            display: flex;align-items: center;">
                            <img alt="guide img" src="/img/use-img-c-4.png"/>
                            <div class="img-contents-wrapper">
                                <div class="img-contents">
                                    <div><p class="img-title">미팅 정보 확인하기</p>
                                        <p class="img-caption">미팅에 참석하기 전 원활한 미팅을 위해<br/>
                                            ‘지원자 모집 중’에서 미팅 정보를 확인해 주세요.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="faq-box">
                        <div class="faq-contents" style="width: 672px;">
                            <div class="dropdown-box">
                                <p class="question">온라인으로도 미팅이 가능한가요?</p>
                                <p class="answer">원하는 미팅 방식을 선택하실 수 있습니다.<br/>
                                    미팅 방식은 화상 미팅, 카카오톡 미팅 등 온라인 미팅과 오프라인 미팅이 있습니다.</p>
                            </div>
                            <div class="dropdown-box">
                                <p class="question">미팅 절차가 어떻게 되나요?</p>
                                <p class="answer">미팅은 아래 절차대로 진행되며, 원활한 미팅 진행을 위해 위시켓 매니저가 도와드립니다.<br/>
                                    위시켓 매니저의 미팅 절차 설명 &gt; 파트너의 자기소개 &gt; 클라이언트 소개 및 프로젝트 내용 설명 &gt;
                                    질의응답 및 이슈 체크 &gt; 추후 일정 및 견적 확인</p>
                            </div>
                            <div class="dropdown-box">
                                <p class="question">미팅 시 이용요금이 발생하나요?</p>
                                <p class="answer">아닙니다. 이용요금은 계약 체결 시에만 발생합니다.<br/>
                                    또한, 상주 프로젝트일 경우에만 클라이언트님이 이용요금을 부담하니 참고해 주세요.</p>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="guide-contents" id="contract">
                    <div class="contents-box">
                        <p class="contents-title">위시켓 안심계약으로 안전하게 계약할 수 있습니다.</p>
                        <p class="contents-subtitle mb64">미팅 시 협의된 내용을 토대로 위시켓에서 계약서를 작성해드립니다.<br/>
                            모든 계약 과정은 온라인으로 진행되며, 위시켓 플랫폼에 계약 기록이 남아 더욱 안전합니다.</p>
                        <div class="guide-with-img center">
                            <img alt="guide img" src="/img/use-img-c-5.png"/>
                            <div class="img-contents-wrapper">
                                <div class="img-contents">
                                    <div><p class="img-title">위시켓 표준계약서</p>
                                        <p class="img-caption">IT 아웃소싱에 특화된 안전한 계약서입니다.<br/>
                                            법무법인의 검토를 받아 모두에게 공정한 조항들로<br/> 믿을 수 있는 계약서를 사용합니다.</p>
                                    </div>
                                </div>
                                <div class="img-contents">
                                    <div><p class="img-title">대금보호시스템</p>
                                        <p class="img-caption">계약 체결 시 클라이언트가 위시켓에 예치한 대금을<br/>
                                            프로젝트가 끝날 때까지 안전하게 보호하며,<br/> 완료 후 파트너에게 대금을 지급합니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="vertical-guide bottom">
                            <div class="guide-item">
                                <img alt="guide img" src="/img/use-icon-contrat-c-1.png"/>
                                <p class="item-title">계약서 검토</p>
                                <p class="item-contents">파트너와 협의한 대로 계약서가<br/>작성되었는지 검토해 주세요.</p>
                            </div>
                            <div class="guide-item">
                                <img alt="guide img" src="/img/use-icon-contrat-c-2.png"/>
                                <p class="item-title">계약서 날인</p>
                                <p class="item-contents">클릭 한 번으로 온라인에서 간편하게<br/>날인할 수 있습니다.</p>
                            </div>
                            <div class="guide-item">
                                <img alt="guide img" src="/img/use-icon-contrat-c-3.png"/>
                                <p class="item-title">계약 관리</p>
                                <p class="item-contents">온라인에서 편리하게 진행 상황을<br/>기록하고 관리할 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="faq-box">
                        <div class="faq-contents">
                            <div class="dropdown-box">
                                <p class="question">온라인으로 날인하는 게 법적 효력이 있나요?</p>
                                <p class="answer">네, 그렇습니다. 위시켓 안심계약은 전자서명법 제3조 제3항, 전자 문서 및 전자거래
                                    기본법 제4조 제1항에 따라 실제 서면 계약서로 계약한 것과 같은 효력을 가집니다.</p>
                            </div>
                            <div class="dropdown-box">
                                <p class="question">대금을 분할해서 결제할 수 있나요?</p>
                                <p class="answer">네, 가능합니다.<br/> 분할 비율 및 시점은 계약 시 파트너 및 위시켓 매니저와 협의하에 결정됩니다.
                                    <br/> 기존 시장에서 통용되는 기간 단위의 분할 방식이 아니라, 대금보호시스템에 따라 업무범위 별로 대금을 분할합니다.
                                    <a href="#">‘대금보호시스템’ 자세히 보기</a></p>
                            </div>
                            <div class="dropdown-box">
                                <p class="question">계약서에 어떤 내용들이 포함되어 있나요?</p>
                                <p class="answer">위시켓 표준계약서의 주요 조항으로는 계약 기간, 대금의 결제 및 지급, 대금의 환불, 업무의 내역,
                                    지식재산권, 비밀유지, 하자보수, 계약의 해제 또는 해지, 분쟁의 해결 등이 있습니다.<br/> 위시켓 표준계약서는
                                    법무법인 세움의 법률 검토를 통해 안전하게 작성되었습니다.</p>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="guide-contents" id="projectComplete">
                    <div class="contents-box">
                        <div class="guide-with-img left">
                            <img alt="guide img" src="/img/use-img-c-6-1.png"/>
                            <div class="img-contents-large">
                                <div><p class="img-title">‘프로젝트 기록’에서 진행 상황을<br/>기록하고 관리해보세요.</p>
                                    <p class="img-caption">프로젝트에 관련된 모든 내용과 자료를 공유함으로써<br/> 파트너와 원활한 커뮤니케이션이 가능합니다.</p>
                                </div>
                            </div>
                        </div>
                        <div class="guide-with-img right" style="flex-direction: row-reverse;">
                            <img alt="guide img" src="/img/use-img-c-6-2.png"/>
                            <div class="img-contents-large">
                                <div><p class="img-title">완성된 결과물을 검수하고<br/> 대금 지급을 승인해보세요.</p>
                                    <p class="img-caption">결과물 검수 후 대금 지급을 승인하면 위시켓에서<br/> 파트너에게 대금을 전달합니다.</p>
                                </div>
                            </div>
                        </div>
                        <div class="guide-with-img left">
                            <img alt="guide img" src="/img/use-img-c-6-3.png"/>
                            <div class="img-contents-large">
                                <div><p class="img-title">프로젝트를 함께 진행했던<br/>파트너에 대한 평가를 남겨주세요.</p>
                                    <p class="img-caption">전문성, 결과물 만족도, 의사소통 등 5가지 항목의 평점과<br/>
                                        함께 일한 소감을 남길 수 있습니다. 남겨주신 평가는<br/> 다른 클라이언트가 파트너를 선택하는데 큰 도움이 됩니다.</p>
                                </div>
                            </div>
                        </div>
                        <div class="guide-link-box" data-target="/accounts/signup/">
                            <div class="left-box">
                                <img alt="guide img" src="/img/use-banner-icon-search.png"/>
                                <div class="link-contents-box">
                                    <p class="guide-link-title">다양한 카테고리의 IT 프로젝트를 등록하고 전문가를 만나보세요.</p>
                                    <p class="guide-link-contents">위시켓의 빠르고 편리하고 안전한 프로세스를 경험해 보세요.</p>
                                </div>
                            </div>
                            <a class="guide-link" href="../accounts/signup/">위시켓 회원가입하기</a>
                        </div>
                    </div>
                    <div class="faq-box">
                        <div class="faq-contents">
                            <div class="dropdown-box">
                                <p class="question">프로젝트 진행 도중 분쟁이 생기면 어떻게 해야 하나요?</p>
                                <p class="answer">담당 커뮤니케이션 매니저에게 분쟁 상황을 공유해 주세요.<br/> 위시켓은 분쟁 발생 시,
                                    안심중재솔루션 3단계를 통해 해결을 도와드립니다.<br/><br/> 1단계: 양자 협의<br/>
                                    문제 상황 초기에 당사자 간의 커뮤니케이션을 통해 합의점을 찾는 단계입니다.
                                    계약서 내용 및 프로젝트 진행 상황을 점검하여 추후에 생길 수 있는 큰 손해를 예방할 수 있습니다.
                                    합의된 내용을 토대로 계약서 일부를 수정하여 프로젝트를 재개하거나 계약을 파기할 수 있습니다.<br/><br/>
                                    2단계: 위시켓 지원 미팅<br/> 양자 간 합의점을 찾지 못할 경우, 위시켓 리스크 매니저의 중립적인 도움을 받는 단계입니다.
                                    위시켓에서 주관하는 삼자 미팅을 통해 양측의 주장과 관련 자료를 검토한 후, 원만하게 합의할 수 있도록 도와드립니다.<br/><br/>
                                    3단계: 대한상사중재원 중재<br/> 해당 분야의 전문가인 중재인의 전문적인 판단을 통해 신속하게 분쟁을 해결할 수 있습니다.
                                    위시켓은 중재 과정의 서류 작업을 도와드리며, 중재 신청 금액이 1억 원 미만일 경우 중재 비용 전액을 지원합니다.</p>
                            </div>
                            <div class="dropdown-box" >
                                <div class="question">추가 계약, 유지보수도 의뢰하고 싶은데 어떻게 하나요?</div>
                                <div class="answer">담당 커뮤니케이션 매니저에게 말씀해 주세요. 추가 계약, 유지보수 계약 또한 안전하게
                                    체결하실 수 있도록 도와드립니다.<br/><br/> 1. 작업한 파트너와 계속 진행할 경우<br/> 계약서 작성, 날인 과정을
                                    마친 후 바로 프로젝트를 시작할 수 있습니다.<br/><br/> 2. 다른 파트너를 찾고 싶으신 경우<br/> 기존과 동일하게
                                    프로젝트 등록 후 지원자 모집 과정을 거쳐 다른 파트너와 프로젝트를 시작할 수 있습니다.</div>
                            </div>
                            <div class="dropdown-box">
                                <p class="question">프로젝트 진행 도중 계약 내용을 변경해야 할 경우 어떻게 하나요?</p>
                                <p class="answer">변경이 필요한 내용을 담당 커뮤니케이션 매니저에게 전달해주세요.<br/> 파트너와 협의하에 계약 내용
                                    변경이 가능하고, 협의된 내용을 특약서 형태로 작성해드립니다.</p>
                            </div>
                        </div>
                    </div>
                </section>
            </section>
        </section>
    </div>
</div>



