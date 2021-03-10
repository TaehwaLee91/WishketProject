package wishket.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import wishket.spring.mvc.service.ProjectService;
import wishket.spring.mvc.vo.ProjectVO;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BoardController {

    @Autowired
    ProjectService psrv;

    @GetMapping("/project/list")
    public ModelAndView board(ModelAndView mv, String cp) {
        mv.setViewName("projectboard/search.tiles");
        List<ProjectVO> ps = psrv.readProject(cp);
        mv.addObject("ps", ps);
        mv.addObject("pscnt", psrv.countProject());
        return mv;
    }

    @GetMapping("/project/board")
    public ModelAndView boardView(ModelAndView mv, String pno, String cp) {
        mv.setViewName("projectboard/boardView.tiles");
        // 여기에 selectOne 해야함
        mv.addObject("pvo", psrv.readOneProject(pno));
        return mv;
    }

//    @GetMapping("/project/list/filter")
//    public ModelAndView filter(ModelAndView mv){
//
//    }

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

}
