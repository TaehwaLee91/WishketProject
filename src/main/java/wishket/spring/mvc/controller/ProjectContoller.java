package wishket.spring.mvc.controller;

import com.sun.media.jfxmedia.logging.Logger;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import wishket.spring.mvc.service.ProjectService;
import wishket.spring.mvc.util.FileUpDownUtil;
import wishket.spring.mvc.vo.ProjectVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Slf4j
@Controller
public class ProjectContoller {

    @Autowired
    private ProjectService psrv;
    @Autowired
    private FileUpDownUtil futil;

    @GetMapping("/project/create")
    public String create(HttpSession session){
        String returnPage = "project/create.tiles";
        String userid = (String)session.getAttribute("UID");
        if(userid == null) {
            returnPage = "redirect:/accounts/login";
        }
        return returnPage;
    }

    @PostMapping("/project/edit/1")
    public ModelAndView enrollOK(ModelAndView mv, ProjectVO pvo){
        mv.setViewName("project/basic.tiles");
        mv.addObject("pvo", pvo);
        return mv;
    }

    @PostMapping("/project/edit/2")
    public ModelAndView basicOk(ModelAndView mv, ProjectVO pvo, HttpServletRequest rq){
        StringBuilder sb = new StringBuilder();

        mv.setViewName("project/prepare.tiles");

        // category 필수항목
        // vo에 넣기 위해 여러 값을 하나의 문자열로 변환
        String[] categories = rq.getParameterValues("category");
        String category = "";
        for(String item : categories){
            sb.append(item + "/");
        }
        category = sb.toString();
        category = category.substring(0, category.length()-1);

        pvo.setCategory(category);

        sb.delete(0, sb.length());

        // area 필수항목
        // vo에 넣기 위해 여러 값을 하나의 문자열로 변환
        String[] areas = rq.getParameterValues("area");
        String area = "";
        for(String item : areas) {
            sb.append(item + "/");
        }
        area = sb.toString();
        area = area.substring(0, area.length()-1);

        pvo.setArea(area);

        sb.delete(0, sb.length());

        // 담당직무 필수항목 (상주)
        // vo에 넣기 위해 여러 값을 하나의 문자열로 변환
        String[] positions = rq.getParameterValues("position");
        if(positions != null) { // 상주일 경우
            String position = "";
            for(String item : positions) {
                sb.append(item + "/");
            }
            position = sb.toString();
            position = position.substring(0, position.length()-1);
            pvo.setPosition(position);
        } else { // 외주일 경우
            pvo.setPosition("");
        }

        mv.addObject("pvo", pvo);

        return mv;
    }

    @PostMapping("/project/edit/3")
    public ModelAndView prepareOk(ModelAndView mv, ProjectVO pvo, HttpServletRequest rq, MultipartFile[] file,
                                  HttpSession session){
        StringBuilder sb = new StringBuilder();

        mv.setViewName("project/detail.tiles");

        // 상세 기획 상태 선택항목
        if(rq.getParameter("detailStatus") != null){
            String[] detailStatuses = rq.getParameterValues("detailStatus");
            String detailStatus = "";

            for(String item : detailStatuses) {
                sb.append(item + "/");
            }
            detailStatus = sb.toString();
            detailStatus = detailStatus.substring(0, detailStatus.length()-1);
            pvo.setDetailStatus(detailStatus);
        }

        // 관련 자료 선택항목
        // file은 임시폴더에 우선 저장한 다음 마지막 프로젝트 등록시에 업로드 폴더로 옮기기
        // vo에 fname, fsize, ftype, fuuid 가 저장되어 있음
        // session에 파일 정보 들어있는 pvo 인스턴스를 저장
        if(file.length > 0) {
            pvo = psrv.addFileTemp(pvo, file);
            session.setAttribute("pvo", pvo);
        }

        mv.addObject("pvo", pvo);

        return mv;
    }

    @PostMapping("/project/edit/4")
    public ModelAndView detailOk(ModelAndView mv, ProjectVO pvo, HttpServletRequest rq){
        mv.setViewName("project/budget.tiles");
        mv.addObject("pvo", pvo);
        return mv;
    }

    @PostMapping("/project/edit/5")
    public ModelAndView budgetOk(ModelAndView mv, ProjectVO pvo, HttpServletRequest rq){
        StringBuilder sb = new StringBuilder();
        mv.setViewName("project/meeting.tiles");

        // 프로젝트 유형이 상주일 경우 '/'으로 년차,인원,월지급액을 구분하고 '*'으로 추가된 년차,인원,월지급액을 구분함
        if(pvo.getType().equals("상주")) {
            int cnt = rq.getParameterValues("availableBudget").length / 3;
            int k = 0;
            String availableBudget = "";
            for (int i = 0; i < cnt; i++) {
                for (int j = 0; j < 3; j++) {
                    sb.append(rq.getParameterValues("availableBudget")[k] + "/");
                    k++;
                }
                sb.deleteCharAt(sb.toString().length()-1);
                sb.append("*");
            }
            availableBudget = sb.toString();
            availableBudget = availableBudget.substring(0, availableBudget.length()-1);
            pvo.setAvailableBudget(availableBudget);
        }

        mv.addObject("pvo", pvo);

        return mv;
    }


    @PostMapping("/project/edit/6")
    public ModelAndView meetingOk(ModelAndView mv, ProjectVO pvo, HttpServletRequest rq){
        mv.setViewName("project/require.tiles");

        // 근무 장소
        String workPlace = rq.getParameter("workPlace1") + " " + rq.getParameter("workPlace2");
        pvo.setWorkPlace(workPlace);

        if(rq.getParameter("workPlace3") != null){
            workPlace = workPlace + " " + rq.getParameter("workPlace3");
            pvo.setWorkPlace(workPlace);
        }

        // 추가지원사항
        if(pvo.getType().equals("상주")){
            String extraWorkAndSupport = rq.getParameter("support1") + "/" +
                    rq.getParameter("support2") + "/" +
                    rq.getParameter("support3") + "/" +
                    rq.getParameter("support4") + "/" +
                    rq.getParameter("support5");
            pvo.setExtraWorkAndSupport(extraWorkAndSupport);
        }

        mv.addObject("pvo", pvo);

        return mv;
    }

    @PostMapping("/project/edit/7")
    public ModelAndView requireOk(ModelAndView mv, ProjectVO pvo, HttpServletRequest rq){
        mv.setViewName("project/additional.tiles");
        StringBuilder sb = new StringBuilder();

        // prerequisites 가공
        if( rq.getParameter("prerequisites") != null){
            String prerequisite = "";
            String[] prerequisites = rq.getParameterValues("prerequisites");
            for(String item : prerequisites){
                sb.append(item + "/");
            }
            prerequisite = sb.toString();
            prerequisite = prerequisite.substring(0, prerequisite.length()-1);
            pvo.setPrerequisites(prerequisite);

            sb.delete(0, sb.length());
        }

        String[] questions = rq.getParameterValues("question");
        String question = "";
        if(questions.length > 0){
            System.out.println(questions.length);
            for(String item : questions){
                sb.append(item + "/");
            }
            question = sb.toString();
            question = question.substring(0, question.length()-1);
            pvo.setQuestion(question);
        }

        mv.addObject("pvo", pvo);
        return mv;
    }

    @PostMapping("/project/edit/8")
    public ModelAndView additionalOk(ModelAndView mv, ProjectVO pvo, HttpServletRequest rq){
        mv.setViewName("project/review.tiles");
        StringBuilder sb = new StringBuilder();

        // futurePlan 가공
        if( rq.getParameter("futurePlan") != null) {
            String futurePlan = "";
            String[] futurePlans = rq.getParameterValues("futurePlan");
            for (String item : futurePlans) {
                sb.append(item + "/");
            }
            futurePlan = sb.toString();
            futurePlan = futurePlan.substring(0, futurePlan.length() - 1);
            pvo.setFuturePlan(futurePlan);
        }

        sb.delete(0, sb.length());

        if( rq.getParameter("interestProduct") != null) {
            String interestProduct = "";
            String[] interestProducts = rq.getParameterValues("interestProduct");
            for (String item : interestProducts) {
                sb.append(item + "/");
            }
            interestProduct = sb.toString();
            interestProduct = interestProduct.substring(0, interestProduct.length() - 1);
            pvo.setInterestProduct(interestProduct);
        }

        mv.addObject("pvo", pvo);
        return mv;
    }

    @PostMapping("/project/finish")
    public ModelAndView createProject(ModelAndView mv, ProjectVO pvo, HttpSession session){

        // 첨부 파일이 있다면
        // session에 저장해뒀던 file 정보를 vo에 복사
        ProjectVO tempVO = (ProjectVO)session.getAttribute("pvo");
//        if(pvo.getFname1() != null ) {
//            pvo.setFuuid( tempVO.getFuuid() );
//            pvo.setFname1( tempVO.getFname1() );
//            pvo.setFsize1( tempVO.getFsize1() );
//            pvo.setFtype1( tempVO.getFtype1() );
//        }
//        if(pvo.getFname2() != null ) {
//            pvo.setFname2( tempVO.getFname2() );
//            pvo.setFsize2( tempVO.getFsize2() );
//            pvo.setFtype2( tempVO.getFtype2() );
//        }
//        if(pvo.getFname3() != null){
//            pvo.setFname3( tempVO.getFname3() );
//            pvo.setFsize3( tempVO.getFsize3() );
//            pvo.setFtype3( tempVO.getFtype3() );
//        }

        if(!ObjectUtils.isEmpty(tempVO)){
            if(!ObjectUtils.isEmpty(tempVO.getFname1())){
                pvo.setFname1(tempVO.getFname1());
                pvo.setFsize1(tempVO.getFsize1());
                pvo.setFtype1(tempVO.getFtype1());
            }
            if(!ObjectUtils.isEmpty(tempVO.getFname2())){
                pvo.setFname2(tempVO.getFname2());
                pvo.setFsize2(tempVO.getFsize2());
                pvo.setFtype2(tempVO.getFtype2());
            }
            if(!ObjectUtils.isEmpty(tempVO.getFname3())){
                pvo.setFname3(tempVO.getFname3());
                pvo.setFsize3(tempVO.getFsize3());
                pvo.setFtype3(tempVO.getFtype3());
            }
            pvo.setFuuid( tempVO.getFuuid() );
        }

        String userid = (String)session.getAttribute("UID");

        // 데이터 삽입
        Boolean isSuccess = psrv.createNewProject(pvo, userid);

        // 데이터 삽입 성공시
        if(isSuccess){
            mv.setViewName("redirect:/index");
            if(!ObjectUtils.isEmpty(tempVO)){
                if(!ObjectUtils.isEmpty(tempVO.getFname1())){
                    futil.moveToFile(tempVO.getFname1(), tempVO.getFuuid());
                }
                if(!ObjectUtils.isEmpty(tempVO.getFname2())){
                    futil.moveToFile(tempVO.getFname2(), tempVO.getFuuid());
                }
                if(!ObjectUtils.isEmpty(tempVO.getFname3())){
                    futil.moveToFile(tempVO.getFname3(), tempVO.getFuuid());
                }
            }

        } else {
            mv.setViewName("redirect:/project/create");
        }

        return mv;
    }

    // ajax로 주소 가져오기
    @ResponseBody
    @GetMapping("/project/edit/sido")
    public void getSido(HttpServletResponse res){
        try {
            // 응답결과의 유형은 json으로 설정
            res.setContentType("application/json; charset=UTF-8");

            // 응답결과를 브라우저로 보냄
            res.getWriter().print(psrv.readSido());

        } catch(Exception ex) {
            ex.printStackTrace();
        }
    }

    @ResponseBody
    @GetMapping("/project/edit/gugun")
    public void getGugun(String sido, HttpServletResponse res){
        try {
            // 응답결과의 유형은 json으로 설정
            res.setContentType("application/json; charset=UTF-8");

            // 응답결과를 브라우저로 보냄
            res.getWriter().print(psrv.readGugun(sido));

        } catch(Exception ex) {
            ex.printStackTrace();
        }
    }



    @GetMapping("/project/basic")
    public String basic(){
        return "project/basic.tiles";
    }

    @GetMapping("/project/prepare")
    public String prepare(){
        return "project/prepare.tiles";
    }

    @GetMapping("/project/detail")
    public String detail(){
        return "project/detail.tiles";
    }

    @GetMapping("/project/budget")
    public String budget(){
        return "project/budget.tiles";
    }

    @GetMapping("/project/meeting")
    public String meeting(){
        return "project/meeting.tiles";
    }

    @GetMapping("/project/require")
    public String require(){
        return "project/require.tiles";
    }

    @GetMapping("/project/additional")
    public String additional(){
        return "project/additional.tiles";
    }

    @GetMapping("/project/review")
    public String review(){
        return "project/review.tiles";
    }

}
