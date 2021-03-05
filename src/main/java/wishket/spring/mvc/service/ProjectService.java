package wishket.spring.mvc.service;

import org.springframework.web.multipart.MultipartFile;
import wishket.spring.mvc.vo.ProjectVO;

public interface ProjectService {
    Boolean createNewProject(ProjectVO pvo);
    String readSido();
    String readGugun(String sido);
    ProjectVO addFileTemp(ProjectVO pvo, MultipartFile[] file);
}
