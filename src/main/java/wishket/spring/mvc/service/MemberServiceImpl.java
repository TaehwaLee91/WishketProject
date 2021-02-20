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
}
