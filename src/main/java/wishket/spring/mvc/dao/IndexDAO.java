package wishket.spring.mvc.dao;

import wishket.spring.mvc.vo.IndexVO;

import java.util.List;

public interface IndexDAO {
    int countProject();

    int countMember();

    List<IndexVO> selectList(int i);
}
