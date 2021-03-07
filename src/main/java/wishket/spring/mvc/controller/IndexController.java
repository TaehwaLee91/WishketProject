package wishket.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import wishket.spring.mvc.service.IndexService;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class IndexController {
    @Autowired
    IndexService isrv;

    @GetMapping("/index")
    public ModelAndView index(ModelAndView mv){
        mv.setViewName("index.tiles");
        mv.addObject("pt", isrv.readList(4) ); // section3에 필요한 프로젝트 내용 데이터
        mv.addObject("cp",isrv.countProject()); // section2에 필요한 프로젝트수
        mv.addObject("cm",isrv.countMember()); // section2에 필요한 회원

        return mv;
    }

    @GetMapping("/boardView")
    public String board(){ return "boardView.tiles"; }
}
