package wishket.spring.mvc.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import wishket.spring.mvc.dao.ProjectDAO;
import wishket.spring.mvc.util.FileUpDownUtil;
import wishket.spring.mvc.vo.ProjectVO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("psrv")
public class ProjectServiceImpl implements ProjectService {

    private ProjectDAO pdao;
    private FileUpDownUtil fud;

    @Autowired
    public ProjectServiceImpl(ProjectDAO pdao, FileUpDownUtil fud) {
        this.pdao = pdao;
        this.fud = fud;
    }

    @Override
    public Boolean createNewProject(ProjectVO pvo, String userid) {
        Boolean isSuccess = false;
        int checkCnt = pdao.insertNewProject(pvo, userid);
        if(checkCnt > 0) {
            isSuccess = true;
        }
        return isSuccess;
    }

    @Override
    public List<ProjectVO> readProject(String cp) {
        int snum = (Integer.parseInt(cp) - 1) * 10;
        return pdao.selectProject(snum);
    }

    @Override
    public ProjectVO readOneProject(String pno) {
        ProjectVO pvo = pdao.selectOneProject(pno);
        return pvo;
    }

    @Override
    public List<ProjectVO> readFilterProject(Map<String, Object> filter) {
        List<ProjectVO> pvo = pdao.selectFilterProject(filter);
        return pvo;
    }

    @Override
    public int countProject() {
        return pdao.selectCountProject();
    }

    // ajax로 시도 가져오기
    @Override
    public String readSido() {
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        try {
            json = mapper.writeValueAsString(pdao.selectSido());
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return json;
    }

    // ajax로 구군 가져오기
    @Override
    public String readGugun(String sido) {
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        try {
            json = mapper.writeValueAsString(pdao.selectGugun(sido));
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return json;
    }

    @Override // 파일 임시폴더에 저장
    public ProjectVO addFileTemp(ProjectVO pvo, MultipartFile[] file) {
        // 파일 임시폴더에 저장
        String uuid = fud.makeUUID();
        List<String> files = new ArrayList<>();

        for(MultipartFile f : file){
            if(!f.getOriginalFilename().isEmpty()){
                files.add(fud.procUpload1(f, uuid));
                // 파일업로드시 앞서 만든 uuid값을 매개변수로 넘김
                // 업로드한 뒤 결과값은 '파일명/파일크기/파일종류'로 넘어옴
            } else {
                files.add("-/-/-");
                // 업로드를 하지 못한 경우 '-/-/-'만 넘김
            }
        }
        for(int i = 0; i < files.size() ; i++){
            if(i == 0){
                pvo.setFname1(files.get(0).split("[/]")[0]);
                pvo.setFsize1(files.get(0).split("[/]")[1]);
                pvo.setFtype1(files.get(0).split("[/]")[2]);
            } else if(i == 1){
                pvo.setFname2(files.get(1).split("[/]")[0]);
                pvo.setFsize2(files.get(1).split("[/]")[1]);
                pvo.setFtype2(files.get(1).split("[/]")[2]);
            } else if(i == 2) {
                pvo.setFname3(files.get(2).split("[/]")[0]);
                pvo.setFsize3(files.get(2).split("[/]")[1]);
                pvo.setFtype3(files.get(2).split("[/]")[2]);
            }

        }

        pvo.setFuuid(uuid);

        return pvo;
    }

}
