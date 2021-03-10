package wishket.spring.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository("bdao")
public class BoardDAOImpl implements BoardDAO{
    @Autowired
    SqlSession sqlSession;

    @Override
    public int selectOneMno(HashMap map) {

        return sqlSession.selectOne("board.selectMno",map); }

    @Override
    public int insertM(HashMap map) {
        return sqlSession.insert("board.insertSupport",map);
    }

    @Override
    public void updateSuppoters(String pno) {
        sqlSession.update("board.updateSuppoters",pno);
    }
}
