package wishket.spring.mvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import wishket.spring.mvc.vo.MemberVO;

@Controller
public class LoginAfterContoller {

    @GetMapping("/partners/p")
    public String myprofile() { return "profile/myprofile.tiles";}

    @GetMapping("mywishket/partners")
    public String loginindex(MemberVO mvo) { return "loginafter/loginindex.tiles";}



}
