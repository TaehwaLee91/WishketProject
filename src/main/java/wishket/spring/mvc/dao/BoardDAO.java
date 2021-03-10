package wishket.spring.mvc.dao;

import java.util.HashMap;

public interface BoardDAO {
    int selectOneMno(HashMap map);

    int insertM(HashMap map);

    void updateSuppoters(String pno);
}
