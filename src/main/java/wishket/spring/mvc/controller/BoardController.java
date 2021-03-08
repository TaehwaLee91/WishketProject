package wishket.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

    @GetMapping("/board")
    public String Board() {
        return "projectboard/search.tiles";
    }

    @GetMapping("/boardView")
    public String boardView() {
        return "projectboard/boardView.tiles";
    }

}
