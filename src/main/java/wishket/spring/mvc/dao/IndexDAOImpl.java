package wishket.spring.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import wishket.spring.mvc.vo.IndexVO;

import java.util.List;

@Repository("idao")
public class IndexDAOImpl implements IndexDAO{
    @Autowired
    SqlSession sqlSession;

    @Override
    public int countProject() {
        return sqlSession.selectOne("index.countProject");
    }

    @Override
    public int countMember() {
        return sqlSession.selectOne("index.countMember");
    }

    @Override
    public List<IndexVO> selectList(int i) {
        return sqlSession.selectList("index.selectList", i );
    }
}
