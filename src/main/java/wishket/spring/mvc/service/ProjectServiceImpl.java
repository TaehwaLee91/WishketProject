package wishket.spring.mvc.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wishket.spring.mvc.dao.ProjectDAO;

@Service("psrv")
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    private ProjectDAO pdao;

    // ajax로 시도 가져오기
    @Override
    public String readSido() {
        // select가 클릭되면 ajax로 zipcode에 있는 시도를 불러와서 option에 들어감
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        try {
            json = mapper.writeValueAsString(pdao.selectSido());
            // 검색한 주소데이터를 json형식으로 변환
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return json;
    }

    // ajax로 구군 가져오기
    @Override
    public String readGugun(String sido) {
        // select가 클릭되면 ajax로 zipcode에 있는 시도를 불러와서 option에 들어감
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        try {
            json = mapper.writeValueAsString(pdao.selectGugun(sido));
            // 검색한 주소데이터를 json형식으로 변환
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return json;
    }

}
