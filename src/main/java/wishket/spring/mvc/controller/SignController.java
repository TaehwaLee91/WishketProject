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
    @Autowired
    JavaMailSender jsms;

    @GetMapping("/accounts/login") // 로그인폼
    public String login() {return "accounts/login.tiles";}

   @GetMapping("/accounts/signup") // 회원가입 폼
    public String signup() {return "accounts/signup.tiles";}

    @PostMapping("/accounts/signup") // 회원가입 처리 , 인증메일 보내기
    public String signupok(MemberVO mvo, RedirectAttributes atb, HttpServletRequest hsrq) {

        System.out.println(msrv.newMember(mvo));
        atb.addFlashAttribute("userid",mvo.getUserid());
        atb.addFlashAttribute("email",mvo.getEmail());

        MimeMessage mail = jsms.createMimeMessage();


        String htmlStr = "<h2>위시켓 인증메일</h2><br><br>"
                + "<h3>" + mvo.getUserid() + "님</h3>" + "<p>인증하기 버튼을 누르시면 로그인을 하실 수 있습니다 : "
                + "<a href='http://localhost:8080" + "/accounts/email" + "/user?email="+mvo.getEmail()+"'>인증하기</a></p>"
                + "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";


        try {
            mail.setSubject("[본인인증] 위시켓 인증메일입니다.", "utf-8");
            mail.setText(htmlStr, "utf-8", "html");
            mail.addRecipient(Message.RecipientType.TO, new InternetAddress(mvo.getEmail()));
            jsms.send(mail);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return "redirect:/accounts/signok";
    }

    @GetMapping("/accounts/email/user") // 인증메일 링크 클릭시 user_key(DB)값 변경 - 로그인가능
    public String confirmUser(@RequestParam String email, ModelAndView mv){
        msrv.confirmUserid(email);

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


    @PostMapping("/accounts/login/login")
    public String login(MemberVO mvo, HttpSession sess) {
        String returnPage ="redirect:/accounts/login";

        if(msrv.checkLogin(mvo,sess))  //로그인 성공시
            returnPage="redirect:/index";


        return returnPage;
    }

    // 로그아웃
    @GetMapping("/accounts/logout")
    public String logout(HttpSession sess) {
        sess.setAttribute("logout","logout");
        sess.setMaxInactiveInterval(1);

        return "redirect:/accounts/login";
    }
}
