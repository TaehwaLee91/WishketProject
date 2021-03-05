package wishket.spring.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import wishket.spring.mvc.vo.MemberVO;

@Repository("mdao")
public class MemberDAOImpl implements MemberDAO{

    @Autowired
    private SqlSession sqlSession;

    @Override   //회원가입) 가입정보 저장
    public int insertMember(MemberVO mvo) {
        return sqlSession.insert("member.insertMember",mvo);
    }

    @Override   //회원가입) 아이디 중복확인
    public int selectOneUserid(String userid) {
        return sqlSession.selectOne("member.selectUserid",userid);
    }

    @Override   //회원가입) 이메일 중복확인
    public int selectOneEmail(String email) {
        return sqlSession.selectOne("member.selectEmail",email);
    }

    @Override   //로그인) 아이디/비밀번호/이메일인증여부 확인
    public int selectLogin(MemberVO mvo) {return sqlSession.selectOne("member.checkLogin",mvo);}

    @Override   //이메일인증) 이메일인증완료로 업데이트
    public int confirmUser(MemberVO mvo) {return sqlSession.update("member.confirmUser",mvo);}

    @Override   //이메일인증) 회원가입성공시 이메일 인증코드 DB에 업데이트
    public int updateCode(MemberVO mvo) {return sqlSession.update("member.updateCode",mvo);}
}
