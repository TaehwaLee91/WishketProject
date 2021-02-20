package wishket.spring.mvc.service;

import wishket.spring.mvc.vo.MemberVO;


public interface MemberService {
    String newMember (MemberVO mvo);
    String checkUserid(String userid);

    String checkEmail(String email);
}
