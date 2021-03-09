package wishket.spring.mvc.dao;

import wishket.spring.mvc.vo.ProjectVO;

import java.util.List;
import java.util.Map;

public interface ProjectDAO {
    int insertNewProject(ProjectVO pvo, String userid);
    List<ProjectVO> selectProject(int snum);
    ProjectVO selectOneProject(String pno);
    List<ProjectVO> selectFilterProject(Map<String, Object> filter);
    int selectCountProject();
    List<String> selectSido();
    List<String> selectGugun(String sido);
}
