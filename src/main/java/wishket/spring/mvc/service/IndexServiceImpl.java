package wishket.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wishket.spring.mvc.dao.IndexDAO;
import wishket.spring.mvc.vo.IndexVO;

import java.util.List;

@Service("isrv")
public class IndexServiceImpl implements IndexService{
    @Autowired
    IndexDAO idao;

    @Override
    public int countProject() {
        return idao.countProject();
    }

    @Override
    public int countMember() {
        return idao.countMember();
    }

    @Override
    public List<IndexVO> readList(int i) {
        return idao.selectList(i);
    }
}
