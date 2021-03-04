package wishket.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wishket.spring.mvc.dao.MemberDAO;
import wishket.spring.mvc.vo.MemberVO;

import javax.servlet.http.HttpSession;

@Service("msrv")
public class MemberServiceImpl implements MemberService{

    @Autowired
    private MemberDAO mdao;
    @Override
    public String newMember(MemberVO mvo) {
        String result="회원가입 실패!";
        int cnt=mdao.insertMember(mvo);
        if (cnt>0) result="회원가입 성공!";
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
        }else{
            sess.setAttribute("warning","warning");
            sess.setMaxInactiveInterval(1);
        }
        return isLogin;
    }
}
