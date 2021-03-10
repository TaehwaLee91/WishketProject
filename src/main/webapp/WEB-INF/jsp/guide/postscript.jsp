<%@ page pageEncoding="UTF-8" %>

<style>
    footer {padding:10px; text-align: center; width: 100%;}
    /* .main {min-height: 100%;height: auto !important;margin: 0 auto -250px;padding: 0 0 250px; margin-top: 20px; min-width: 1080px;
        box-sizing: border-box;background-color: #f5f5f5;
        font-family: 'NotoSansKR', 'serif'; font-size: 14px; text-decoration-color:#555; } */
    .main {font-family: ''; font-size: 14px; text-decoration-color:#555;box-sizing: border-box; margin-top: 20px;padding: 0 0 250px;}
    .page {margin-left: auto;margin-right: auto;width: 1080px;}
    .page:before {content: " ";display: table; line-height: 0;box-sizing: border-box;}
    .content {border-radius: 3px; display: inline;float: left;margin-left: 10px;margin-right: 10px; width: 1060px;}
    h1, h2, h3, h4, h5, h6 {font-weight: 700;line-height: 1.1; color: inherit;text-rendering: optimizelegibility;}
    p {display: block;margin-block-start: 1em;margin-block-end: 1em; margin-inline-start: 0px;margin-inline-end: 0px;}
    h3 {font-size: 24px;}
    div {display: block;}
    .header-text{margin: 0;}
    small {font-size: 65%}
    section {display: block;}
    .content-header { margin: 0; margin-bottom: 5px;}

    .postscript_title {font-size: 16px;line-height: 21px;font-weight: bold;color: #212121}
    .postscript_client {margin-top: 10px;font-size: 13px; color: #666666;}
    .postscript_image {width: 262px; height: 176px;}
    .postscript_body {margin-top: 16px;display: block;}
    .postscript_body a {color: #2099bb;text-decoration: none;}

    .postscript_body .postscript_text {width: 176px; font-size: 13px; line-height: 21px; float: right; margin: 15px 0 15px 0px;}
    .postscript_text a {text-decoration: none !important; color: #2099bb;}
    .postscript_text p {line-height: 21px; color: #333333; text-decoration: none; margin: 0 0 10px;}

    .postscript_detail {font-weight: bold;font-size: 13px;margin-top: 7px;color: #2099bb;}

    .review_header_image {width: 268px;height: 97px;background-size: 268px 97px;display: inline-block;}
    .leftmove {margin-top: 249px;width: 17px;height: 29px;background-size: 17px 29px;cursor: pointer;}
    .rightmove {margin-top: 249px;width: 17px;height: 29px;background-size: 17px 29px;cursor: pointer;}
    .review_list:first-child {padding: 5px 0 0 5px;}
    .review_list {display: inline-block; padding: 5px 0 0 22px;}
    .review_box:first-child {margin: 0;}
    .review_box {width: 443px;height: 169px;padding: 20px 25px;border-radius: 2px;
        box-shadow: 0 0 8px 0 rgba(0 0 0 .1);background-color: #ffffff;margin: 10px 0 0 0;}
    .review_client_image {width: 55px;height: 55px;border-radius: 27.5px; vertical-align: top;}
    .review_client_info_box {display: inline-block;font-size: 14px;line-height: 15px;margin-left: 15px;}
    .review_body {margin-top: 12px; font-size: 14px; line-height: 20px; position: absolute; width: 393px;}
    .faq_box {margin: 0 3px;border-top: 1px solid #dedede;}
    .faq_box:last-child {border-bottom: 1px solid #dedede;}
    .faq_box .faq_title {line-height: 45px;font-size: 14px;padding: 0 15px;cursor: pointer;}

    .faq_box .control_button{float: right;font-size: 20px;line-height: 45px;cursor: pointer;
        background-image: url(/img/use-icon-down.png); background-size: 24px 24px;height: 24px;width: 24px; margin-top: 10px;}

    .rotated {transform: rotate(180deg);}
    .faq_title:before{background-image: url(/img/use-icon-question-w.png);content: '';display: inline-block; margin-right: 12px;
        background-size: 20px 20px; height: 20px; width: 20px; vertical-align: text-bottom;}
    .faq_box .faq_body {background: #fafafa;}
    .faq_box .faq_answer {padding: 25px;}
    img {vertical-align: middle;}
    .total_info_title {font-size: 16px;}
    .success_client_section .success_client_info .total_info .total_info_body {margin: 10px 0 0 0;font-size: 20px;}
    .success_client_section b {font-weight: bold;}

    .start_image {display: inline-block;margin-right: 8px;vertical-align: top;}
    .star-sm-5{background-image: url('/img/star-5-sm.png'); background-repeat: no-repeat; align-items: center}
    .star-sm {width: 78px; height: 14px;}

    .review_list_list animated{
        transition-property: left;
        transition-duration: 0.5s;
        -webkit-transition-property: left;
        -webkit-transition-duration: 0.5s;    }

    .review_list_list {width: 3300px;position: absolute;}

</style>

<div class="main">
    <div class="page">
        <div class="content">
            <div class="content-header" style="margin: 0; margin-bottom: 5px; padding: 30px;background-color: #fff; border-radius: 3px;border-bottom-width: 2px; border: 1px solid #dedede;">
                <h3 class="header-text">이용후기 <small class="small-text" style="line-height: 20px; margin-top: 10px;display: block;
                                        font-size: 65%; color: #999">
                    위시켓과 함께라면 성공적으로 프로젝트를 완료할 수 있습니다.</small>
                </h3>
            </div>
            <div class="content-inner" style="padding: 30px;background-color: #fff;border-radius: 3px;border-bottom-width: 2px; border: 1px solid #dedede;">
                <section class="postscript_section" style="display: block;box-sizing">
                    <div class="represent_postscript_box" style="padding: 15px 15px 30px 15px;border-bottom: 1px solid #eeeeee;line-height: 1;">
                        <a href="https://www.wishket.com/news-center/detail/272/" style="color: #2099bb;text-decoration: none;">
                            <div class="postscript_title represent" style="font-size: 21px;">카셰어링 서비스 쏘카- 정산시스템 구축</div></a>
                        <div class="postscript_client">비공개 지원 시스템</div>
                        <div class="postscript_body" style="display: inline-block;"><a href="https://www.wishket.com/news-center/detail/272/" >
                            <img class="postscript_image represent" style="width: 520px; height: 180px; font-size: 14px;
                        line-height: 24px;margin: 16px 0 16px 0px;" src="/img/wishket_carsharing.png"/></a>
                            <div class="postscript_text represent" style="width: 420px;font-size: 14px;line-height: 24px;margin: 40px 0 16px 25px; vertical-align: center;">
                                <a href="https://www.wishket.com/news-center/detail/272/"><p>위시켓은 파트너 풀이 굉장히 다양했고,
                                    지정된 업체와 컨텍을 하는 것이 아니라 여러 파트너를 한 번에 만날 수 있어서 좋았습니다.<br/>덕분에 빠르게 전문적인 파트너를 만날 수 있었어요.
                                    <br/>빠르게 독립적인 프로젝트를 수행하고 싶은 분들께 <br/>위시켓을 추천합니다.</p></a>
                                <div class="postscript_detail">
                                    <a href="https://www.wishket.com/news-center/detail/272/">자세히 보기 &gt;</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="normal_postscript_box first" style="width: 497px;padding: 30px 30px 0 15px;border: none; display: inline-block;">
                        <a href="https://www.wishket.com/news-center/detail/232/">
                            <div class="postscript_title">가구, 가전 쇼핑몰 ADR- 상세페이지 디자인</div></a>
                        <div class="postscript_client">지급 승인 후, 대금송금</div>
                        <div class="postscript_body">
                            <a href="https://www.wishket.com/news-center/detail/232/">
                                <img class="postscript_image" src="/img/wishket_safe.png"/></a>
                            <div class="postscript_text"><a href="https://www.wishket.com/news-center/detail/232/">
                                <p>클라이언트가 산출물을 받고, 지급 승인을 할 때까지 위시켓이 대금을 보호하는 시스템이라고 하니까 안심하고 외주를 맡길 수 있었습니다.<br/></p></a>
                                <div class="postscript_detail">
                                    <a href="https://www.wishket.com/news-center/detail/232/">자세히 보기 &gt;</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="normal_postscript_box" style="width: 497px; margin: 0 0 30px 0;padding: 30px 15px 0 30px;border-left: 1px solid #eeeeee;
                line-height: 1;display: inline-block; float: right;">
                        <a href="https://www.wishket.com/news-center/detail/260/">
                            <div class="postscript_title">법무법인 세움- 홈페이지 제작</div></a>
                        <div class="postscript_client">일주일에 1번 대면미팅</div>
                        <div class="postscript_body"><a href="https://www.wishket.com/news-center/detail/260/">
                            <img class="postscript_image" src="/img/wishket_partner.png"/></a>
                            <div class="postscript_text"><a href="https://www.wishket.com/news-center/detail/260/">
                                <p>개발자님이 끝까지 책임감있는 모습, 적극적인 모습으로 프로젝트를 맡아주셔서 저희가 원하던 홈페이지가 구현됐어요.</p></a>
                                <div class="postscript_detail">
                                    <a href="https://www.wishket.com/news-center/detail/260/">자세히 보기 &gt;</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="client_review_section" style="margin: 0 -30px;background: #fafafa;padding: 65px 31px 40px 31px;">
                    <div class="review_header_box" style="text-align: center;">
                        <div class="review_header_title" style="font-size: 24px;line-height: 1;font-weight: bold;color: #333333;">
                            위시켓을 이용한 클라이언트가 직접 남긴 후기를 확인하세요.</div>
                        <div class="review_header_body" style="margin-top: 39px;">
                            <div class="review_header_image image1" style="margin-right: 52px; background-image: url('/img/handshake.png');">
                                <div class="counter_text" style="margin: 50px 0 0 0; font-size: 16px;">위시켓에서 체결된 계약</div>
                                <div class="counter" style="margin: 4px 0 0 0;font-size: 20px;font-weight: bold;width: 160px;display: inline-block;">
                                    <b>10,411</b>개</div>
                            </div>
                            <div class="review_header_image image2" style="background-image: url('/img/star.png');">
                                <div class="counter_text" style="margin: 50px 0 0 0; font-size: 16px;">클라이언트 평균 만족도</div>
                                <div class="counter" style="margin: 4px 0 0 0;font-size: 20px;font-weight: bold;width: 160px;display: inline-block;"><b>4.7</b>점</div>
                            </div>
                        </div>
                    </div>
                    <div class="review_content_box" style="margin: 50px 0 27px 0;height: 540px;overflow: hidden;">
                        <div class="leftmove left" style="float: left;background-image: url('/img/left_move.png');"></div>
                        <div class="rightmove right" style="float: right;background-image: url('/img/right_move.png');"></div>
                        <div class="review_list_wrapper" style="position: relative;overflow: hidden;width: 928px;height: 537px;margin: 0 0 0 40px;">
                            <div class="review_list_list animated">
                                <div class="review_list">
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username">
                                                    <span>place5inc</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span>
                                                        <span>5</span><span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/flysod/">flysod</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 / 웹 외 1개</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review_body">실력도 정말 좋으시고 정말 친절하시고 협업한 팀원과도 소통이 정말 잘 되었습니다. 이번 컨설팅에 크게 만족했고 다음에도 요청드리고 싶습니다.</div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>heemin</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span>
                                                        <span>5</span>
                                                        <span class="partner_info">파트너
                                                            <a href="https://www.wishket.com/partners/p/janejinheejenny/">janejinheejenny</a>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="project_info">
                                                    <span class="project_category">기획 / 웹</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review_body">의뢰한 내용을 최선을 다해 진행해주십니다. 원활한 소통과 적극적인 업무 협업을 통해, 프로젝트가 잘마무리 될 수 있었습니다.</div>
                                    </div>
                                    <div class="review_box">
                                        <img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>0616pocket</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span>
                                                        <span>5</span><span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/_ndvor/">_ndvor</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 / 웹 외 1개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">저희도 개발팀이지만 웹개발자만 있고 앱개발자는 전혀 없는 상황이었습니다.
                                            따라서 요건이 명확하지 않았던 상황인데도 처음부터 차근차근 하나씩 같이 살펴주셨습니다. 막... <div class="."></div>   <!--수정:내용 점점으로 줄이기-->
                                        </div>
                                    </div>
                                </div>
                                <div class="review_list">
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>fordjn</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/joseph35533553/">joseph35533553</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">기획 / 웹 외 2개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">원하는 내용의 포인트를 잘 이해하시고 빠르게 진행해주셨습니다. 중간중간 모르는 부분에 대한 질문,
                                            수정 사항 등에 대한 피드백도 신속하게 응대해주셨습니다. 감사합니다~
                                        </div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>rypark</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/pnsoft_inc/">pnsoft_inc</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 · 디자인 · 기획 / 웹 외 2개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">1차 기획까지 마무리 된 상황에서 기획 고도화와 디자인, 퍼블리싱을 의뢰하였습니다. 지원 업체 중 법인사업체를 선택하였고,
                                            2곳의 업체를 만났는데 미팅 후 경험이 많은 피 ...
                                        </div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>gumman04</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/wondervari/">wondervari</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">디자인 · 기획 / 애플리케이션</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">창업을 하고 싶어서 애플리케이션 개발을 의뢰했습니다. 사실 저는 개발지식이 부족해서 처음 시작부터 우려되는 부분들이 많았습니다.
                                            약간은 비싼 비용에 망설여지기도 했 ...</div>
                                    </div>
                                </div>
                                <div class="review_list">
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>starwide</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/jackee/">jackee</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 · 디자인 · 기획 / 웹 외 2개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">경험이 없는 상태에서 쇼핑몰을 구축하는데 혼란이 예상되었으나 기존 경험을 풍부하여 제가 생각하지 못하는 부분까지 알아서
                                            구축해 주어 생각보다 수월하게 작업을 진행할 수 있었 ...</div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>moongciwishket</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/SuperSoft/">SuperSoft</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 / 웹 외 1개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">짧은 기간에 하드웨어와 연동하는 난이도가 있는 프로젝트였습니다. 밤낮 가리지 않고 프로젝트를 위한 질문을 주시고 해결하기
                                            위해 3달간 쉬지도 않고 개발팀이 노력하여 만족 ...</div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>kipat99</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>4.80</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/haedols/">haedols</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 / 웹</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">전에 진행했던 프로젝트가 만족스러워 관련 업무 추가 개발 프로젝트도 함께 부탁드렸습니다. 개발하면서 이슈가 생기거나
                                            논의가 필요한 부분은 항상 친절한 설명과 함께 조율 ...
                                        </div>
                                    </div>
                                </div>
                                <div class="review_list">
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>sjmbusan</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/dominated/">dominated</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 / 웹 외 2개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">친절하게 상담 및 진행해주셨습니다. 많은 문의 내용에도 불구하고 친절하게 답변해주셨고, 요청한 부분을 정확하게 파악하여
                                            작업해주셨습니다. 현재 작업해주신 내용을 바탕으 ...
                                        </div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>ldu1105</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/jackee/">jackee</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 · 디자인 · 기획 / 웹 외 2개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">처음으로 제작해 보는 프로젝트였고, 너무 잘 모르는 상태에서 시작을 해서 걱정이 많았습니다 저는 직접 미팅을 갖고 더 많은
                                            대화를 나누며 일하는 것을 선호하지만, 코로 ...
                                        </div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>minkyuxyz</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/madchick/">madchick</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 / 웹</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">처음 진행하는 프로젝트이고 기술적으로도 루틴한 일이 아닌 새로운 시도를 많이 해야 하는 작업이었음에도 불구하고 기대한 것
                                            이상으로 많은 시간과 노력 기울여서 완성도 있는 결 ...
                                        </div>
                                    </div>
                                </div>
                                <div class="review_list">
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>happyseo</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/reliabdh/">reliabdh</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 / 워드프레스</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">좋은 작업 감사드립니다.</div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>deathcry</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/pnsoft_inc/">pnsoft_inc</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 / 웹 외 2개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">프로젝트 진행시 친절하게 개발을 진행하며 순조롭게 개발이 진행 되었습니다. 중간 보고나 커뮤니케이션도 잘되었고 단점은 딱히
                                            없이 개발이 마무리 되었습니다.
                                        </div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>dantekim</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/boldy_hk/">boldy_hk</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">디자인 / 웹 외 1개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">급한 요청건이었는데, 신속하고 정확하게, 퀄리티 있게 진행해 주셨습니다. 정말 추천드립니다!</div>
                                    </div>
                                </div>
                                <div class="review_list">
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>place5inc</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/flysod/">flysod</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 / 웹 외 1개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">실력도 정말 좋으시고 정말 친절하시고 협업한 팀원과도 소통이 정말 잘 되었습니다. 이번 컨설팅에 크게 만족했고 다음에도 요청드리고 싶습니다.</div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>heemin</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/janejinheejenny/">janejinheejenny</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">기획 / 웹</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">의뢰한 내용을 최선을 다해 진행해주십니다. 원활한 소통과 적극적인 업무 협업을 통해, 프로젝트가 잘마무리 될 수 있었습니다.</div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>0616pocket</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/_ndvor/">_ndvor</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 / 웹 외 1개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">저희도 개발팀이지만 웹개발자만 있고 앱개발자는 전혀 없는 상황이었습니다. 따라서 요건이 명확하지 않았던 상황인데도
                                            처음부터 차근차근 하나씩 같이 살펴주셨습니다. 막 ...
                                        </div>
                                    </div>
                                </div>
                                <div class="review_list">
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>fordjn</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/joseph35533553/">joseph35533553</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">기획 / 웹 외 2개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">원하는 내용의 포인트를 잘 이해하시고 빠르게 진행해주셨습니다. 중간중간 모르는 부분에 대한 질문, 수정 사항 등에 대한 피드백도 신속하게 응대해주셨습니다. 감사합니다~</div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>rypark</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/pnsoft_inc/">pnsoft_inc</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">개발 · 디자인 · 기획 / 웹 외 2개</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">1차 기획까지 마무리 된 상황에서 기획 고도화와 디자인, 퍼블리싱을 의뢰하였습니다. 지원 업체 중 법인사업체를 선택하였고, 2곳의 업체를 만났는데 미팅 후 경험이 많은 피 ...</div>
                                    </div>
                                    <div class="review_box"><img class="review_client_image" src="/img/default_avatar_c.png"/>
                                        <div class="review_client_info_box">
                                            <div class="review_client_info">
                                                <div class="client_username"><span>gumman04</span>
                                                    <div class="client_star_score"><span class="start_image star-sm star-sm-5"></span> <span>5</span>
                                                        <span class="partner_info">파트너 <a href="https://www.wishket.com/partners/p/wondervari/">wondervari</a></span>
                                                    </div>
                                                </div>
                                                <div class="project_info"><span class="project_category">디자인 · 기획 / 애플리케이션</span></div>
                                            </div>
                                        </div>
                                        <div class="review_body">창업을 하고 싶어서 애플리케이션 개발을 의뢰했습니다. 사실 저는 개발지식이 부족해서 처음 시작부터 우려되는 부분들이 많았습니다. 약간은 비싼 비용에 망설여지기도 했 ...</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="success_client_section" style="padding: 0 31px;line-height: 1;color: #333333; box-sizing: border-box; }">
                    <div class="success_client_title" style="background: url('/img/colored_bars1.png') no-repeat;
                        background-size: 938px 97px; padding: 90px 0 0 0;font-size: 24px;font-weight: bold;">
                        수많은 클라이언트가 위시켓을 통해 프로젝트를 성공적으로 완료했습니다.</div>
                    <div class="success_client_info" style="margin-top: 40px; display: flex; ">
                        <div class="total_info" style="margin: 0;padding: 0;border-left: none;">
                            <div class="total_info_title" style="font-size: 16px;">프로젝트 등록 금액</div>
                            <div class="total_info_body" style="margin: 10px 0 0 0;font-size: 20px;"><b style="font-weight: bold;">409,888,258,157</b>원</div>
                        </div>
                        <div class="total_info" style="margin: 0 0 0 30px;padding: 0 0 0 30px;border-left: 1px solid #eeeeee; display: inline-block;">
                            <div class="total_info_title">위시켓 클라이언트</div>
                            <div class="total_info_body"><b>69,127</b>명</div>
                        </div>
                    </div>
                    <div class="success_client_image_box" style="width: 936px; height: 468px; margin: 35px 0 0 0;">
                        <img src="/img/success_clients.png" style="max-width: 100%;max-height: 100%;
                                vertical-align: middle; border: 0;"/></div>
                    <div class="success_client_footer" style="position: relative;background: url('/img/colored_bars2.png') no-repeat;
                            background-size: 1058px 178px;margin: 0 -61px;text-align: center;height: 178px;">
                        <div class="client_footer_title" style="font-size: 18px; font-weight: bold; padding: 60px 0 0 0;">위시켓과 함께 클라이언트님의 프로젝트를 성공적으로 완료해보세요.</div>
                        <button class="btn btn-client btn-lg" onclick="location.href = '/project/create'"
                                style="width: 237px; font-size: 16px; margin-top: 20px;
                                    padding: 10px 16px; line-height: 1.33; border-radius: 3px;color: #fff;background-color: #446eab;border-color: #3d6299;display: inline-block; margin-bottom: 0; text-align: center;cursor: pointer;white-space: nowrap;}">
                            프로젝트 등록하기</button></a>
                    </div>
                </section>
                <section class="faq_section" style="padding: 32px 1px 0 1px;">
                    <div class="faq_section_title" style="font-size: 18px;line-height: 1;font-weight: bold;color: #333333;margin-bottom: 24px;">
                        <img class="faq_title_image" src="/img/question_mark.png" style="width: 11px;height: 18px;margin-right: 10px;vertical-align: top;"/>
                        자주 묻는 질문</div>
                    <div class="faq_box">
                        <div class="faq_title" data-target="#qna_1" data-toggle="collapse">위시켓 이용요금은 얼마인가요?
                            <div class="control_button fa"></div>
                        </div>
                        <div class="faq_body collapse in" id="qna_1">
                            <div class="faq_answer">클라이언트님의 이용요금은 프로젝트 형태에 따라 달라집니다.<br/>
                                <br/> 1. 외주(도급) 프로젝트 진행 시<br/> : 무료(프로젝트 대금 및 부가세 별도)<br/>
                                <br/> 2. 상주 프로젝트 진행 시<br/> : 프로젝트 대금의 5%<br/>
                                <br/> 외주(도급) 프로젝트 진행 시는 위시켓을 무료로 이용하실 수 있습니다.<br/>
                                <br/> 이용요금 안내 ▶<br/> <a href="https://www.wishket.com/service-fee/">https://www.wishket.com/service-fee/</a>
                            </div>
                        </div>
                    </div>
                    <div class="faq_box">
                        <div class="faq_title" data-target="#qna_2" data-toggle="collapse">예산이 책정되지 않은 프로젝트도 등록할 수 있나요?
                            <div class="control_button fa"></div>
                        </div>
                        <div class="faq_body collapse in" id="qna_2">
                            <div class="faq_answer">네, 의뢰할 프로젝트를 등록하면 위시켓 검수팀이 적정 견적을 안내해드립니다.<br/>
                                <br/> 프로젝트는 등록 후 바로 공개되지 않으며 위시켓 검수 매니저와 상담 이후 공개되므로, 전문적인 상담을 받아볼 수 있습니다.<br/>
                                <br/> 내부적으로 책정된 예산이 없다면, 실제 지출이 가능한 예산을 기입해주세요.
                                <br/> 위시켓 검수 매니저가 해당 예산을 토대로 상담해드립니다.
                            </div>
                        </div>
                    </div>
                    <div class="faq_box">
                        <div class="faq_title" data-target="#qna_3" data-toggle="collapse">프로젝트 내용 작성이 어렵습니다. 내용 작성을 도와주실 수 있나요?
                            <div class="control_button fa"></div>
                        </div>
                        <div class="faq_body collapse in" id="qna_3">
                            <div class="faq_answer">네, 의뢰할 프로젝트를 등록하면 위시켓 검수팀이 클라이언트님의 프로젝트 내용 구체화를 도와드립니다.<br/>
                                <br/> 프로젝트는 등록 후 바로 공개되지 않으며 위시켓 검수 매니저와 상담 이후 공개되므로, 전문적인 상담을 받아볼 수 있습니다.<br/>
                                <br/> 프로젝트 내용을 작성 가능한 만큼 작성해주시고, 프로젝트에 참고할만한 서비스나 기획서를 같이 등록해주세요.
                                <br/> 위시켓 검수 매니저와 상담하여 요구사항을 정리하거나, 프로젝트 내용을 구체화할 수 있습니다.
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <div id="push"></div>
</div>
