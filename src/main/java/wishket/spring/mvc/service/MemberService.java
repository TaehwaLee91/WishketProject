package wishket.spring.mvc.service;

import wishket.spring.mvc.vo.MemberVO;

import javax.servlet.http.HttpSession;


public interface MemberService {
    String newMember (MemberVO mvo);
    String checkUserid(String userid);

    String checkEmail(String email);

    boolean checkLogin(MemberVO mvo, HttpSession sess);
}
