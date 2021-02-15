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
}
