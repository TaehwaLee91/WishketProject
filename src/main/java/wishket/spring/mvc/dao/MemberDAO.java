package wishket.spring.mvc.dao;

import wishket.spring.mvc.vo.MemberVO;

public interface MemberDAO {
    int insertMember(MemberVO mvo);

    int selectOneUserid(String userid);

    int selectOneEmail(String email);
}