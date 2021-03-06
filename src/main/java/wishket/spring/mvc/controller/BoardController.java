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
    public ModelAndView board(ModelAndView mv) {
        String cp = "1";
        mv.setViewName("projectboard/search.tiles");
        List<ProjectVO> ps = psrv.readProject(cp);
        mv.addObject("ps", ps);
//        for(ProjectVO pvo : ps) {
//            System.out.println(pvo.getTitle());
//            System.out.println(pvo.getAvailableBudget());
//            System.out.println(pvo.getCategory());
//            System.out.println(pvo.getProjectTerm());
//            System.out.println(pvo.getType());
//            System.out.println(pvo.getArea());
//            System.out.println(pvo.getDeadLine());
//            System.out.println(pvo.getProjectPriority());
//            System.out.println(pvo.getProjectStatus());
//            System.out.println(pvo.getSkillStack());
//            System.out.println(pvo.getWorkPlace());
//            System.out.println(pvo.getRegdate());
//        }
        mv.addObject("pscnt", psrv.countProject());
//        System.out.println( psrv.countProject() );
        return mv;
    }

}
