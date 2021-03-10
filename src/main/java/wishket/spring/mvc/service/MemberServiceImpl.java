package wishket.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import wishket.spring.mvc.dao.MemberDAO;
import wishket.spring.mvc.vo.MemberVO;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

@Service("msrv")
public class MemberServiceImpl implements MemberService{

    @Autowired
    private MemberDAO mdao;
    @Autowired
    JavaMailSender jsms; // 메일전송

    @Override
    public String newMember(MemberVO mvo) {
        String result="회원가입 실패!";


        int cnt=mdao.insertMember(mvo);
        if (cnt>0) result="회원가입 성공!";



        return result;
    }

    @Override
    public String sendEmail(MemberVO mvo) {
        String result = "인증키 업데이트 실패";

        // 메일 인증코드 생성
        int num = (int)(Math.random()*1000000);
        String code = Integer.toString(num);
        mvo.setConfirmCode(code);

        // 인증코드 업데이트
        int cnt=mdao.updateCode(mvo);
        if (cnt>0) result="인증키 업데이트 성공!";


        MimeMessage mail = jsms.createMimeMessage();

        String htmlStr = "<h2>WishKet 인증메일</h2><br><br>"
                + "<h3>" + mvo.getUserid() + "님</h3>" + "<p>인증하기 버튼을 누르시면 로그인을 하실 수 있습니다 : "
                + "<a href='http://localhost:8080" + "/accounts/email" + "/user?email="+mvo.getEmail()+"&user_key="+mvo.getConfirmCode()+"'>인증하기</a></p>"
                + "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";

        try {
            //메일제목 설정
            mail.setSubject("[본인인증] WishKet 인증메일입니다.", "utf-8");

            //메일내용 설정
            mail.setText(htmlStr, "utf-8", "html");

            //메일수신자 설정
            mail.addRecipient(Message.RecipientType.TO, new InternetAddress(mvo.getEmail()));

            //메일 전송
            jsms.send(mail);
        } catch (MessagingException e) {
            e.printStackTrace();
        }

        return result;
    }

    @Override
    public String checkUserid(String userid) {
        String isOk = "0";
        int  cnt = mdao.selectOneUserid(userid);
        if(cnt>0) isOk="1";
        return isOk;
    }

    @Override
    public String checkEmail(String email) {
        String isOk="0";
        int cnt = mdao.selectOneEmail(email);
        if(cnt>0) isOk="1";
        return isOk;
    }

    @Override
    public boolean checkLogin(MemberVO mvo, HttpSession sess) {
        boolean isLogin = false;
        // 로그인 성공시 회원정보를 세션에 저장.
        // 입력한 회원 아이디/비밀번호가 member 테이블에 있는지 확인
        // 있으면 : 1을 반환, 없으면 : 0 을 반환
        if (mdao.selectLogin(mvo) > 0) {
            sess.setAttribute("UID", mvo.getUserid());
            sess.setMaxInactiveInterval(60*60);
            isLogin = true;
            String userid = mvo.getUserid();
            MemberVO memberInfo = mdao.selectMember(userid);
            sess.setAttribute("email", memberInfo.getEmail());
        }else{
            // 로그인 실패시 로그인창에 경고메세지를 출력하기위해 세션 지정
            sess.setAttribute("warning","warning");
            sess.setMaxInactiveInterval(1);
        }
        return isLogin;
    }

    @Override
    public String confirmUserid(MemberVO mvo) {
        String isOk="0";
        int cnt = mdao.confirmUser(mvo);
        if(cnt>0) isOk="1";
        return isOk;
    }
}
