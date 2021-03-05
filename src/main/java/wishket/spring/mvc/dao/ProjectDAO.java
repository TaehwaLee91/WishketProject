package wishket.spring.mvc.dao;

import java.util.List;

public interface ProjectDAO {
    List<String> selectSido();
    List<String> selectGugun(String sido);
}
