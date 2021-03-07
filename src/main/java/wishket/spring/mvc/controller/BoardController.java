package wishket.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import wishket.spring.mvc.service.ProjectService;
import wishket.spring.mvc.vo.ProjectVO;

import java.util.List;

@Controller
public class BoardController {

    @Autowired
    ProjectService psrv;

    @GetMapping("/project/board")
    public ModelAndView board(ModelAndView mv, String cp) {
        mv.setViewName("projectboard/search.tiles");
        List<ProjectVO> ps = psrv.readProject(cp);
        mv.addObject("ps", ps);
        mv.addObject("pscnt", psrv.countProject());
        return mv;
    }

}
