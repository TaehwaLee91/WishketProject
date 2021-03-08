package wishket.spring.mvc.service;

import org.springframework.web.multipart.MultipartFile;
import wishket.spring.mvc.vo.ProjectVO;

import java.util.List;

public interface ProjectService {
    Boolean createNewProject(ProjectVO pvo, String userid);
    List<ProjectVO> readProject(String cp);
    int countProject();
    String readSido();
    String readGugun(String sido);
    ProjectVO addFileTemp(ProjectVO pvo, MultipartFile[] file);
}
