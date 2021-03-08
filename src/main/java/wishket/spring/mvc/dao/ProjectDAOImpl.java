package wishket.spring.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import wishket.spring.mvc.vo.ProjectVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository("pdao")
public class ProjectDAOImpl implements ProjectDAO {
    @Autowired
    private SqlSession sqlSession;

    @Override
    public int insertNewProject(ProjectVO pvo, String userid) {
        String mno = sqlSession.selectOne("project.selectMno", userid).toString();
        pvo.setMno(mno);

        return sqlSession.insert("project.insertNewProject", pvo);
    }

    @Override
    public List<ProjectVO> selectProject(int snum) {
        return sqlSession.selectList("project.selectList", snum);
    }

    @Override
    public int selectCountProject() {
        return sqlSession.selectOne("project.countProject");
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
