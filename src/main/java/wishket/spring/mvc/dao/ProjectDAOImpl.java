package wishket.spring.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import wishket.spring.mvc.vo.ProjectVO;

import java.util.List;

@Repository("pdao")
public class ProjectDAOImpl implements ProjectDAO {
    @Autowired
    private SqlSession sqlSession;

    @Override
    public int insertNewProject(ProjectVO pvo) {
        return sqlSession.insert("project.insertNewProject", pvo);
    }

    // ajax로 시도 가져오기
    @Override
    public List<String> selectSido() {
        return sqlSession.selectList("project.selectSido");
    }

    // ajax로 구군 가져오기
    @Override
    public List<String> selectGugun(String sido) {
        return sqlSession.selectList("project.selectGugun", sido);
    }
}
