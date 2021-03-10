package wishket.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import wishket.spring.mvc.service.MemberService;
import wishket.spring.mvc.vo.MemberVO;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class SignController {
    @Autowired
    MemberService msrv;


    @GetMapping("/accounts/login") // 로그인폼
    public String login() {return "accounts/login.tiles";}

   @GetMapping("/accounts/signup") // 회원가입 폼
    public String signup() {return "accounts/signup.tiles";}

    @PostMapping("/accounts/signup") // 회원가입 처리,인증메일 보내기
    public String signupok(MemberVO mvo, RedirectAttributes atb, HttpServletRequest hsrq) {

        System.out.println(msrv.newMember(mvo)); // DB에 가입정보 입력
        System.out.println(msrv.sendEmail(mvo)); // 이메일 보내기 + 고유코드 DB에저장
        atb.addFlashAttribute("userid",mvo.getUserid());
        atb.addFlashAttribute("email",mvo.getEmail());


        return "redirect:/accounts/signok";
    }


    @GetMapping("/accounts/email/user") // 인증메일 링크 클릭시 user_key(DB)값 변경 - 로그인가능
    public String confirmUser(@RequestParam String email,@RequestParam String user_key){
        // @RequestParam 을 이용해서 url상에 있는 email,user_key값을 가져와서 mvo에 값을 넣고
        // DB값과 비교하기위한 메서드 실행 confrimUserid(mvo)
        MemberVO mvo = new MemberVO(email,user_key);
        msrv.confirmUserid(mvo);

        return "accounts/confirm.tiles";
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


    @PostMapping("/accounts/login/login") // 로그인기능
    public String login(MemberVO mvo, HttpSession sess) {
        String returnPage ="redirect:/accounts/login";

        if(msrv.checkLogin(mvo,sess))  //로그인 성공시
            returnPage="redirect:/mywishket/partners";


        return returnPage;
    }


    @GetMapping("/accounts/logout") // 로그아웃
    public String logout(HttpSession sess) {
        // 로그아웃시 로그인창으로 돌아가게되는데 이때 로그아웃 메세지 출력을 위해 세션지정
        sess.setAttribute("logout","logout");
        sess.setMaxInactiveInterval(1);

        return "redirect:/accounts/login";
    }
}
