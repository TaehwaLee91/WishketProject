package wishket.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import wishket.spring.mvc.service.MemberService;
import wishket.spring.mvc.vo.MemberVO;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class SignController {
    @Autowired
    MemberService msrv;

    @GetMapping("/accounts/login") // 로그인폼
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
    @ResponseBody // 아이디 중복체크
    @GetMapping("accounts/signup/checkUserid")
    public void checkUserid(String userid, HttpServletResponse res){
        try{
            res.getWriter().print(msrv.checkUserid(userid));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @ResponseBody // 이메일 중복체크
    @GetMapping("accounts/signup/checkEmail")
    public void checkEmail(String email, HttpServletResponse res){
        try{
            res.getWriter().print(msrv.checkEmail(email));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @GetMapping("/accounts/signok") // 회원가입 완료 부분
    public String signok() { return "accounts/signok.tiles";}
}
