<%@ page pageEncoding="UTF-8" %>

<style>
    footer {padding:10px; text-align: center; width: 100%;}
    .main:after {content: " "; display: block; clear: both;}
    .text900 {color: #212121; font-weight: bold;}
    .title-2-medium {font-weight: 500; font-size: 32px;line-height: 48px;}
    .mb24 {margin-bottom: 24px;}
    .flex-box{display: flex;align-items: center;}
    .default-input-wishket:after {clear: both;display: block; content: '';}
    .cs-box .search-submit {padding: 8px 16px 10px;}
    .cs-navbar .cs-category {flex: 1 1 360px; text-align: center;height: 100%;}
    .subtitle-2 {font-size: 18px;line-height: 28px;font-weight: 400;}
    .cs-category .category-title { height: 100%; line-height: 66px;display: inline-table;}
    .category-title.active {border-bottom: solid 2px #212121;}

    .cs-box .support-content {padding: 52px;}
    .flex-box.space-between,
    .detail-contents .tab-box .space-between {justify-content: space-between;}
    .flex-box.baseline {align-items: baseline;}
    .top-10-faqs-title { margin-bottom: 18px;}
    .top-10-faqs ol {list-style: none; counter-reset: item; padding: 0;
}
    .top-10-faqs ol li {padding: 12px 8px;width: 578px;counter-increment: item;border-bottom: solid 1px #eee;
        cursor: pointer;}
    .cs-box .support-content .top-10-faqs ol li.client:before {
        color: #2e6baa;background-color: #e3edfa; display: inline-block;margin-right: 16px;
        content: counter(item);width: 20px;height: 20px;border-radius: 50%;text-align: center;line-height: 20px;}
    .cs-box .support-content .title-icon { margin-left: 8px; width: 24px; height: 24px;}
    .cs-box .support-content .newbie-center .use-guide:not(:first-child) {margin-top: 24px;}
    .use-guide-img {margin-bottom: 16px; width: 48px; height: 48px;}
    .use-guide-title {margin-bottom: 8px;}
    .use-guide.wishket {border: solid 1px #bfedfa;background-color: #f2fcff; }
    .use-guide {display: block;
        padding: 44px 0;
        text-align: center;
        width: 325px;
        height: 230px;
        border-radius: 8px;
        box-shadow: 0 1px 4px 0 #e6ebf0;}
    .cs-topic-box-title {margin-bottom: 24px;}
    .cs-topic-box .faq-box-wrap {
        display: grid;grid-template-columns: repeat(3, 1fr);grid-gap: 1px;}
    .cs-box .support-content .cs-topic-box .faq-box-wrap .faq-box {
        box-shadow: 0 0 0 1px #e0e0e0;padding: 24px; min-height: 274px;}

    .cs-box .support-content .cs-topic-box .faq-box-wrap .faq-box .faq-category-icon {
        width: 36px;height: 36px;margin-right: 16px;}
    .body-1-medium {font-weight: bold;}
    .cs-box .support-content .cs-topic-box .faq-box-wrap .faq-box .faq-move-icon {margin-left: 4px; margin-top: -3px; }
    .faq-topic-box {margin-top: 8px;margin-left: 52px;}
    .faq-topic-box .faq-subcategory-title {display: block;}
    .faq-topic-box .faq-subcategory-title:not(:first-child) {margin-top: 6px;}
    .body-2 {font-size: 14px;line-height: 24px;font-weight: 400;}
    .btn {cursor: pointer;
        display: inline-block;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        user-select: none;
        border-radius: 4px;
        border: none;}
    .text600 {color: #616161;}
    .text700 {color: #424242;}
    .faq-topic-box .to-all-subcategory {color: #3ba3c7; margin-top: 6px;}
    .default-input-wishket>input {
        display: block;
        border-radius: 4px;
        padding: 8px 12px;
        border: 1px solid #e0e0e0;
        font-size: 14px;
        line-height: 24px;
        color: #616161;
        font-weight: 400;
        background: #fff;
        width: 100%;
        height: inherit;
        padding: 8px 12px 8px 12px;
    }
    a {color: #212121;}

</style>



<div class="main" style="min-width: 1080px; height: auto; min-height: 70%; box-sizing: border-box;
    margin: 0; padding: 0; font-family: 'NotoSansKR',Sans-serif; line-height: 1rem; -webkit-font-smoothing: antialiased;">
    <div class="container cs-box" style="width: 1080px;margin: 0 auto;">
        <header style="margin-top: 48px;">
            <div class="flex-box">
                <div>
                    <div class="mb24 title-2-medium text900">
                        <span>안녕하세요!</span> <br>
                        <span>무엇을 도와드릴까요?</span>
                    </div>
                    <div class="flex-box">
                        <div class="default-input-wishket" style="position: relative;">
                            <input autocomplete="off"
                                   class="theme-wishket wishket-text search-text large" style="width: 400px;height: 42px;margin-right: 8px;"
                                   data-input-type="text-input"
                                   id="searchFaqInput" name="search_text"
                                   placeholder="도움이 필요하시거나 궁금한 점을 검색해주세요!" type="text" value="">
                        </div>
                        <span class="error-text" style="display: none;">에러상세 메시지</span>
                        <button class="btn btn-wishket body-2 search-submit" onclick="getFAQList()"
                            style="background-color: #2099bb;color: #fff;border: #2099bb;">검색</button>
                    </div>
                </div>
                <img alt="고객센터 이미지" class="faq-img-title" style="margin-left: 118px; width: 440px; height: 220px;"
                     src="/img/faq-img-title.png">
            </div>
        </header>
        <section class="faq-section" style="width: 100%;background: #FFFFFF;border-radius: 4px;box-shadow: 0 2px 8px 0 rgba(0, 0, 0, .16);">
           <header class="cs-navbar flex-box" style="height: 68px;border-bottom: solid 1px #e0e0e0;">
                <a class="cs-category subtitle-2 text600" href="#"><span class="category-title subtitle-2-bold text900 active">클라이언트 고객센터</span></a>
                <a class="cs-category subtitle-2 text600" href="https://www.wishket.com/customer-support/partner/"><span class="category-title ">파트너스 고객센터</span></a>
                <a class="cs-category subtitle-2 text600" href="https://www.wishket.com/customer-support/price/"><span class="category-title ">이용요금</span></a>
           </header>

            <article class="support-content">
                <div class="flex-box baseline space-between">
                    <div class="top-10-faqs">
                        <p class="flex-box top-10-faqs-title subtitle-2-medium text900" style="font-size: 18px;line-height: 28px; font-weight: bold">
                            클라이언트가 자주 묻는 질문 TOP 10
                            <img alt="top 10 이모지" class="title-icon" src="/img/faq-icon-title-1.png"></p>
                        <ol>
                            <li class="body-2 text900 client" onclick="location.href='https://www.wishket.com/customer-support/1/1/1';">
                                서비스 이용 절차를 알려주세요.</li>
                            <li class="body-2 text900 client" onclick="location.href='https://www.wishket.com/customer-support/1/1/2';">
                                프로젝트를 의뢰하려면 클라이언트/파트너 중 어떤 유형으로 가입해야 하나요?</li>
                            <li class="body-2 text900 client" onclick="location.href='https://www.wishket.com/customer-support/1/2/5';">
                                의뢰하려는 프로젝트의 견적이 궁금합니다.</li>
                            <li class="body-2 text900 client" onclick="location.href='https://www.wishket.com/customer-support/1/4/13';">
                                프로젝트 내용이 외부로 유출되면 안 되는 경우에는 어떻게 하나요?</li>
                            <li class="body-2 text900 client" onclick="location.href='https://www.wishket.com/customer-support/1/2/6';">
                                프로젝트 등록 전, 파트너(작업자)에게 연락하거나 프로젝트 의뢰를 할 수 있나요?</li>
                            <li class="body-2 text900 client" onclick="location.href='https://www.wishket.com/customer-support/1/3/11';">
                                위시켓에서 정부지원사업도 진행이 가능한가요?</li>
                            <li class="body-2 text900 client" onclick="location.href='https://www.wishket.com/customer-support/2/6/19';">
                                프로젝트의 예상 기간, 지출 가능 예산을 작성하기 어렵습니다.</li>
                            <li class="body-2 text900 client" onclick="location.href='https://www.wishket.com/customer-support/6/25/83';">
                                에스크로 방식의 대금보호시스템이 무엇인가요?</li>
                            <li class="body-2 text900 client" onclick="location.href='https://www.wishket.com/customer-support/6/24/78';">
                                계약 절차를 알려주세요.</li>
                            <li class="body-2 text900 client" onclick="location.href='https://www.wishket.com/customer-support/8/34/123';">
                                파트너에게 대금을 지급하는 절차가 어떻게 되나요?</li>
                        </ol>
                    </div>
                    <div class="newbie-center">
                        <p class="flex-box newbie-center-title subtitle-2-medium text900" style="font-weight: bold;">위시켓이 처음이신가요?
                            <img alt="뉴비 안내 이모지" class="title-icon" src="/img/faq-icon-title-2.png"></p>
                        <a class="use-guide client" href="use-guide.html" style="    border: solid 1px #ccdbed;background-color: #f5f9ff;">
                            <img alt="파트너 이용방법 이미지" class="use-guide-img" src="/img/faq-icon-use-c-1.png">
                            <p class="use-guide-title" style="font-weight: bold;">클라이언트 이용방법</p>
                            <p class="body-2 text600">위시켓을 쉽고 빠르게<br>이용할 수 있는 방법을 알아보세요!</p>
                        </a>
                        <a class="use-guide wishket" href="https://www.wishket.com/company-intro/">
                            <img alt="회사소개 이미지" class="use-guide-img" src="/img/faq-icon-coporate.png">
                            <p class="use-guide-title" style="font-weight: bold;">위시켓 소개</p>
                            <p class="body-2 text600">세상이 일하는 방식을 변화시키는<br>위시켓에 대해 알아보세요.</p>
                        </a>
                    </div>
                </div>
                <div class="cs-topic-box" style="margin-top: 80px;">
                    <p class="cs-topic-box-title subtitle-2-medium text900">클라이언트 고객센터 모든 글 보기</p>
                    <div class="faq-box-wrap">
                        <div class="faq-box">
                            <p class="flex-box">
                                <img alt="FAQ 카테고리 이미지" class="faq-category-icon" src="/img/faq-icon-request-c.png">
                                <a class="body-1-medium text900" href="https://www.wishket.com/customer-support/1/">의뢰 전
                                    <img class="faq-move-icon" src="/img/faq-icon-right-1.png">
                                </a>
                            </p>
                            <div class="faq-topic-box">
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/1/1/">서비스 이용 문의</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/1/2/">프로젝트 의뢰 방법</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/1/3/">프로젝트 의뢰 가능 여부</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/1/4/">프로젝트 공개 여부</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/1/5/">기타 문의</a>
                            </div>
                        </div>
                        <div class="faq-box">
                            <p class="flex-box">
                                <img alt="FAQ 카테고리 이미지" class="faq-category-icon" src="/img/faq-icon-registration-c.png">
                                <a class="body-1-medium text900" href="https://www.wishket.com/customer-support/2/">프로젝트 등록
                                    <img class="faq-move-icon" src="/img/faq-icon-right-1.png"></a>
                            </p>
                            <div class="faq-topic-box">
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/2/6/">프로젝트 작성</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/2/7/">프로젝트 공개 여부</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/2/8/">검수 문의</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/2/9/">프로젝트 수정 및 취소</a>
                            </div>
                        </div>
                        <div class="faq-box">
                            <p class="flex-box">
                                <img alt="FAQ 카테고리 이미지" class="faq-category-icon" src="/img/faq-icon-support-c.png">
                                <a class="body-1-medium text900" href="https://www.wishket.com/customer-support/3/">지원 요청
                                    <img class="faq-move-icon" src="/img/faq-icon-right-1.png">
                                </a>
                            </p>
                            <div class="faq-topic-box">
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/3/10/">지원 요청이란?</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/3/11/">지원 요청 사용방법</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/3/12/">지원 요청 횟수</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/3/13/">지원 요청 알림</a>
                            </div>
                        </div>
                        <div class="faq-box">
                            <p class="flex-box">
                                <img alt="FAQ 카테고리 이미지" class="faq-category-icon" src="/img/faq-icon-applicant-c.png">
                                <a class="body-1-medium text900" href="https://www.wishket.com/customer-support/4/">지원자 모집
                                    <img class="faq-move-icon" src="/img/faq-icon-right-1.png">
                                </a>
                            </p>
                            <div class="faq-topic-box">
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/4/14/">지원자 검토 및 상담</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/4/15/">프로젝트 수정 및 재등록</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/4/16/">프로젝트 보류 및 취소</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/4/17/">모집 기간 설정</a>
                            </div>
                        </div>
                        <div class="faq-box">
                            <p class="flex-box">
                                <img alt="FAQ 카테고리 이미지" class="faq-category-icon" src="/img/faq-icon-meeting-c.png">
                                <a class="body-1-medium text900" href="https://www.wishket.com/customer-support/5/">미팅
                                    <img class="faq-move-icon" src="/img/faq-icon-right-1.png">
                                </a>
                            </p>
                            <div class="faq-topic-box">
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/5/18/">미팅이란?</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/5/19/">미팅 방식</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/5/20/">미팅 횟수</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/5/21/">미팅 신청</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/5/22/">미팅 취소 및 변경</a>
                                <a class="body-2-medium to-all-subcategory flex-box" href="https://www.wishket.com/customer-support/5/" style="font-size: 14px; margin-top: 10px;">모두 보기
                                    <img class="faq-move-icon" src="/img/btn-icon-go.png" style="margin-top: 3px">
                                </a>
                            </div>
                        </div>
                        <div class="faq-box">
                            <p class="flex-box">
                                <img alt="FAQ 카테고리 이미지" class="faq-category-icon" src="/img/faq-icon-contract-c.png">
                                <a class="body-1-medium text900" href="https://www.wishket.com/customer-support/6/">계약
                                    <img class="faq-move-icon" src="/img/faq-icon-right-1.png">
                                </a>
                            </p>
                            <div class="faq-topic-box">
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/6/24/">계약 절차</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/6/25/">위시켓 안심계약</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/6/26/">대금 결제</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/6/27/">계약서 날인</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/6/28/">계약 체결</a>
                                <a class="body-2-medium to-all-subcategory flex-box" href="https://www.wishket.com/customer-support/6/"
                                   style="font-size: 14px; margin-top: 10px;">모두 보기
                                    <img class="faq-move-icon" src="/img/btn-icon-go.png" style="margin-top: 3px">
                                </a>
                            </div>
                        </div>
                        <div class="faq-box">
                            <p class="flex-box">
                                <img alt="FAQ 카테고리 이미지" class="faq-category-icon" src="/img/faq-icon-start-c.png">
                                <a class="body-1-medium text900" href="https://www.wishket.com/customer-support/7/">프로젝트 진행
                                    <img class="faq-move-icon" src="/img/faq-icon-right-1.png">
                                </a>
                            </p>
                            <div class="faq-topic-box"><a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/7/31/">프로젝트 진행 중</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/7/32/">프로젝트 분쟁</a>
                            </div>
                        </div>
                        <div class="faq-box">
                            <p class="flex-box"><img alt="FAQ 카테고리 이미지" class="faq-category-icon" src="/img/faq-icon-finish-c.png">
                                <a class="body-1-medium text900" href="https://www.wishket.com/customer-support/8/">프로젝트 완료
                                    <img class="faq-move-icon" src="/img/faq-icon-right-1.png">
                                </a>
                            </p>
                            <div class="faq-topic-box">
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/8/33/">완료된 프로젝트</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/8/34/">대금 지급</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/8/35/">추가 계약</a>
                            </div>
                        </div>
                        <div class="faq-box">
                            <p class="flex-box">
                                <img alt="FAQ 카테고리 이미지" class="faq-category-icon" src="/img/faq-icon-review-c.png" >
                                <a class="body-1-medium text900" href="https://www.wishket.com/customer-support/9/">평가
                                    <img class="faq-move-icon" src="/img/faq-icon-right-1.png">
                                </a>
                            </p>
                            <div class="faq-topic-box">
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/9/36/">평가란?</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/9/37/">평가 작성</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/9/38/">평가 기간</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/9/39/">평가 수정 및 삭제</a>
                            </div>
                        </div>
                        <div class="faq-box">
                            <p class="flex-box">
                                <img alt="FAQ 카테고리 이미지" class="faq-category-icon" src="/img/faq-icon-account-c.png">
                                <a class="body-1-medium text900" href="https://www.wishket.com/customer-support/10/">계정
                                    <img class="faq-move-icon" src="/img/faq-icon-right-1.png">
                                </a>
                            </p>
                            <div class="faq-topic-box">
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/10/40/">계정 정보</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/10/41/">아이디/비밀번호</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/10/42/">이메일 관련</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/10/43/">신원 인증</a>
                                <a class="body-2 text700 faq-subcategory-title" href="https://www.wishket.com/customer-support/10/44/">회원 탈퇴</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cs-footer" onclick="location.href='https://www.wishket.com/news-center/tip/';" style="margin-top: 52px; font-size: 16px;
                    padding: 16px 32px;border-radius: 8px;box-shadow: 0 1px 4px 0 #e6ebf0;border: solid 1px #bfedfa;background-color: #f2fcff;position: relative;cursor: pointer;">
                    <img class="footer-img" src="/img/faq-icon-tip.png"
                        style="vertical-align: text-bottom;margin-right: 16px;width: 34px;height: 20px;">
                    <p class="body-2 text900 footer-content" style="display: inline-block; margin-bottom: 0;">
                        프로젝트 진행에 도움이 되는 <strong class="body-2-medium" style="color: #3ba3c7;">위시켓 이용 팁</strong>을 확인해보세요.</p>
                    <img class="move-icon" style="right: 24px;top: 22px; float: right; margin-top: 5px;"
                         src="/img/faq-icon-right-2.png" >
                </div>
            </article>
        </section>
    </div>
</div>