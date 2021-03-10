package wishket.spring.mvc.service;

import org.springframework.web.multipart.MultipartFile;
import wishket.spring.mvc.vo.ProjectVO;

import java.util.List;
import java.util.Map;

public interface ProjectService {
    Boolean createNewProject(ProjectVO pvo, String userid);
    List<ProjectVO> readProject(String cp);
    ProjectVO readOneProject(String pno);
    List<ProjectVO> readFilterProject(Map<String, String[]> filter, String cp);
    int countFilterProject(Map<String, String[]> filter);
    int countProject();
    String readSido();
    String readGugun(String sido);
    ProjectVO addFileTemp(ProjectVO pvo, MultipartFile[] file);
}
