package wishket.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import wishket.spring.mvc.service.MemberService;
import wishket.spring.mvc.vo.MemberVO;

@Controller
public class SignController {
    @Autowired
    MemberService msrv;

    @GetMapping("/accounts/login")
    public String login() {return "accounts/login.tiles";}

   @GetMapping("/accounts/signup") // 회원가입 폼
    public String signup() {return "accounts/signup.tiles";}

    @PostMapping("/accounts/signup") // 회원가입 처리
    public String signupok(MemberVO mvo, RedirectAttributes atb) {

        System.out.println(msrv.newMember(mvo));
        atb.addFlashAttribute("userid",mvo.getUserid());
        atb.addFlashAttribute("email",mvo.getEmail());
        return "redirect:/accounts/signok";
    }

    @GetMapping("/accounts/signok")
    public String signok() { return "accounts/signok.tiles";}
}
