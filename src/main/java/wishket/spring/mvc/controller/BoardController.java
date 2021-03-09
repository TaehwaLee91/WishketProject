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

    @PostMapping("/project/list/filter")
    public ModelAndView filterBoard(ModelAndView mv, HttpServletRequest rq){
        mv.setViewName("projectboard/search.tiles");
        String[] type = rq.getParameterValues("type");
        String[] category = rq.getParameterValues("category");
        String[] area = rq.getParameterValues("area");
        Map<String, Object> param = new HashMap<>();

        if(type.length > 0){
            param.put("type", type);
        }

        if(category.length > 0){
            param.put("category", category);
        }

        if(area.length > 0){
            param.put("area", area);
        }
        List<ProjectVO> pvo = psrv.readFilterProject(param);

        mv.addObject("pvo", pvo);
        return mv;
    }

}
