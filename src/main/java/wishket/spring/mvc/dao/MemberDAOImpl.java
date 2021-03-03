package wishket.spring.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import wishket.spring.mvc.vo.MemberVO;

@Repository("mdao")
public class MemberDAOImpl implements MemberDAO{

    @Autowired
    private SqlSession sqlSession;
    @Override
    public int insertMember(MemberVO mvo) {
        return sqlSession.insert("member.insertMember",mvo);
    }

    @Override
    public int selectOneUserid(String userid) {
        return sqlSession.selectOne("member.selectUserid",userid);
    }

    @Override
    public int selectOneEmail(String email) {
        return sqlSession.selectOne("member.selectEmail",email);
    }

    @Override
    public int selectLogin(MemberVO mvo) {return sqlSession.selectOne("member.checkLogin",mvo);}
}
