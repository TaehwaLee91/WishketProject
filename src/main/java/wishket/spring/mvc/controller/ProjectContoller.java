package wishket.spring.mvc.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import wishket.spring.mvc.service.ProjectService;
import wishket.spring.mvc.vo.ProjectVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
@Controller
public class ProjectContoller {

    @Autowired
    private ProjectService psrv;

    @PostMapping("/project/edit/1")
    public ModelAndView enrollOK(ModelAndView mv, ProjectVO pvo){
        mv.setViewName("project/basic.tiles");
        mv.addObject("pvo", pvo);
        return mv;
    }
    @PostMapping("/project/edit/2")
    public ModelAndView basicOk(ModelAndView mv, ProjectVO pvo, HttpServletRequest rq){
        mv.setViewName("project/prepare.tiles");

        // checkbox 값을 하나의 String으로 만들어주기 위한 작업
        StringBuilder sb = new StringBuilder();

        // category 가공
        String[] categories = rq.getParameterValues("category");
        String category = "";
        for(String item : categories){
            sb.append(item + "/");
        }
        category = sb.toString();
        category = category.substring(0, category.length()-1);

        pvo.setCategory(category);

        sb.delete(0, sb.length());

        // area 가공
        String[] areas = rq.getParameterValues("area");
        String area = "";
        for(String item : areas) {
            sb.append(item + "/");
        }
        area = sb.toString();
        area = area.substring(0, area.length()-1);

        pvo.setArea(area);

        mv.addObject("pvo", pvo);

        return mv;
    }


    @PostMapping("/project/edit/3")
    public ModelAndView prepareOk(ModelAndView mv, ProjectVO pvo, HttpServletRequest rq){
        mv.setViewName("project/detail.tiles");

        // 상세 기획 상태 데이터 가공
        StringBuilder sb = new StringBuilder();
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
        mv.setViewName("project/meeting.tiles");

        if(pvo.getType() == "상주(인력구인)") {
            String availableBudget = rq.getParameter("availableBudget1") +
                    "/" + rq.getParameter("availableBudget2") +
                    "/" + rq.getParameter("availableBudget1");

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
        if(rq.getParameter("workPlace3") != ""){
            workPlace = workPlace + " " + rq.getParameter("workPlace3");
        }
        pvo.setWorkPlace(workPlace);

        // 추가지원사항
        String extraWorkAndSupport = rq.getParameter("support1") + "/" +
                rq.getParameter("support2") + "/" +
                rq.getParameter("support3") + "/" +
                rq.getParameter("support4") + "/" +
                rq.getParameter("support5");
        pvo.setExtraWorkAndSupport(extraWorkAndSupport);

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
        }


        mv.addObject("pvo", pvo);
        return mv;
    }

    // 미완성
    @PostMapping("/project/edit/8")
    public ModelAndView additionalOk(ModelAndView mv, ProjectVO pvo, HttpServletRequest rq){
        mv.setViewName("project/review.tiles");
        StringBuilder sb = new StringBuilder();

        // futurePlan 가공
        String futurePlan = "";
        String[] futurePlans = rq.getParameterValues("futurePlan");
        for(String item :futurePlans){
            sb.append(item + "/");
        }
        futurePlan = sb.toString();
        futurePlan = futurePlan.substring(0, futurePlan.length()-1);

        log.info(futurePlan);

        mv.addObject("pvo", pvo);
        return mv;
    }

    @GetMapping("/project/create")
    public String create(){
        return "project/create.tiles";
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


    // ajax로 주소 가져오기
    @ResponseBody
    @GetMapping("/project/edit/sido")
    public void zipcode(HttpServletResponse res){
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
    public void zipcode(String sido, HttpServletResponse res){
        try {
            // 응답결과의 유형은 json으로 설정
            res.setContentType("application/json; charset=UTF-8");

            // 응답결과를 브라우저로 보냄
            res.getWriter().print(psrv.readGugun(sido));

        } catch(Exception ex) {
            ex.printStackTrace();
        }
    }

}
