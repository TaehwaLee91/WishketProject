package wishket.spring.mvc.service;

import wishket.spring.mvc.vo.IndexVO;

import java.util.List;

public interface IndexService {
    int countProject();

    int countMember();

    String countCash();

    List<IndexVO> readList(String s);


}