package wishket.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping("/index")
    public String index(){
        return "index.tiles";
    }

    @GetMapping("/boardView")
    public String board(){
        return "boardView.tiles";
    }
}
