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
        mv.addObject("pt", isrv.readList("애플리케이션") ); // section3에 필요한 프로젝트 내용 데이터
        mv.addObject("pt2", isrv.readList("웹") );
        mv.addObject("pt3", isrv.readList("일반 소프트웨어") );
        mv.addObject("pt4", isrv.readList("커머스,쇼핑") );
        mv.addObject("pt5", isrv.readList("임베디드") );
        mv.addObject("pt6", isrv.readList("퍼블리싱") );
        mv.addObject("pt7", isrv.readList("제품") );
        mv.addObject("pt8", isrv.readList("워드프레스") );
        mv.addObject("pt9", isrv.readList("기타") );
        mv.addObject("cp",isrv.countProject()); // section2에 필요한 프로젝트수
        mv.addObject("cm",isrv.countMember()); // section2에 필요한 회원
        mv.addObject("cc",isrv.countCash()); // section2에 필요한 프로젝트 대금

        return mv;
    }

}