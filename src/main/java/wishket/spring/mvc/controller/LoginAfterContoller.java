package wishket.spring.mvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginAfterContoller {

    @GetMapping("/partners/p")
    public String myprofile() { return "profile/myprofile.tiles";}

    @GetMapping("mywishket/partners")
    public String loginindex() { return "loginafter/loginindex.tiles";}


}
