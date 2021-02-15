package wishket.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wishket.spring.mvc.dao.MemberDAO;
import wishket.spring.mvc.vo.MemberVO;

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
}
