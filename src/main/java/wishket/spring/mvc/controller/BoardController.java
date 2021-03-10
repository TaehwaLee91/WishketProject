package wishket.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import wishket.spring.mvc.service.BoardService;
import wishket.spring.mvc.service.ProjectService;
import wishket.spring.mvc.vo.ProjectVO;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BoardController {
    ProjectService psrv;
    BoardService bsrv;

    @Autowired
    public BoardController(ProjectService psrv, BoardService bsrv) {
        this.psrv = psrv;
        this.bsrv = bsrv;
    }

    // 프로젝트 찾기
    @GetMapping("/project/list")
    public ModelAndView board(ModelAndView mv, String cp) {
        mv.setViewName("projectboard/search.tiles");
        List<ProjectVO> ps = psrv.readProject(cp);
        mv.addObject("ps", ps);
        mv.addObject("pscnt", psrv.countProject());
        return mv;
    }

    // 상세페이지
    @GetMapping("/project/board")
    public ModelAndView boardView(ModelAndView mv, String pno, String cp) {
        mv.setViewName("projectboard/boardView.tiles");
        // 여기에 selectOne 해야함
        mv.addObject("pvo", psrv.readOneProject(pno));
        return mv;
    }

    // 프로젝트 찾기 조건검색
    @GetMapping("/project/list/filter")
    public ModelAndView filterBoard(ModelAndView mv, HttpServletRequest rq){
        mv.setViewName("projectboard/filter.tiles");
        String[] type = rq.getParameterValues("type");
        String[] category = rq.getParameterValues("category");
        String[] area = rq.getParameterValues("area");
        String cp = rq.getParameter("cp");
        Map<String, String[]> param = new HashMap<>();

        if(type != null){
            param.put("type", type);
        }

        if(category != null){
            param.put("category", category);
        }

        if(area != null){
            param.put("area", area);
        }
        List<ProjectVO> pvo = psrv.readFilterProject(param, cp);
        for(ProjectVO p : pvo){
            System.out.println(p);
        }
        mv.addObject("type", type);
        mv.addObject("category", category);
        mv.addObject("area", area);
        mv.addObject("ps", pvo);
        mv.addObject("pscnt", psrv.countFilterProject(param));
        return mv;
    }


    @ResponseBody // 프로젝트 상세보기 페이지 - 지원하기 버튼 활성 유무 판단  // 지원하기 테이블 내에 로그인 아이디가 없으면 지원하기 기능 추가
    @GetMapping("/project/board/checkMember")
    public void checkEmail(String result, HttpServletResponse res){
        System.out.println(result+"-" + bsrv.checkMember(result));
        try{
            res.getWriter().print(bsrv.checkMember(result));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @ResponseBody // 지원하기 버튼 클릭시 데이터 들어가도록 설정
    @GetMapping("/project/board/insertMember")
    public void insert(String result, HttpServletResponse res){
        try{
            res.getWriter().print(bsrv.insert2(result));
            bsrv.upSuppoters(result);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

//    @ResponseBody // 프로젝트 상세페이지 내부에 해당 프로젝트 지원자수 구하기
//    @GetMapping("/project/board/insertMember")
//    public void countSupport(String pno, HttpServletResponse res){
//        try{
//            res.getWriter().print(bsrv.countSupport(pno));
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }

}
