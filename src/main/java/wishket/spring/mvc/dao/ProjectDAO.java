package wishket.spring.mvc.dao;

import wishket.spring.mvc.vo.ProjectVO;

import java.util.List;

public interface ProjectDAO {
    int insertNewProject(ProjectVO pvo);
    List<ProjectVO> selectProject(int snum);
    int selectCountProject();
    List<String> selectSido();
    List<String> selectGugun(String sido);
}
