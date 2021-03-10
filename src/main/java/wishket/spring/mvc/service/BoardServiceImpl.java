package wishket.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wishket.spring.mvc.dao.BoardDAO;

import javax.print.attribute.IntegerSyntax;
import java.util.HashMap;

@Service("bsrv")
public class BoardServiceImpl implements BoardService{
    @Autowired
    BoardDAO bdao;

    @Override
    public String checkMember(String result) {
        String isOk="0";
        String rresult [] = result.split("/");
        String pno = rresult[1];
        int rpno = Integer.parseInt(pno);
        String userid = rresult[0];
        System.out.println("check = "+userid + rpno);
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("userid",userid);
        map.put("pno",pno);
        if(bdao.selectOneMno(map)>0){
            isOk="1";
        }

        return isOk;
    }

    @Override
    public String insert2(String result) {
        String isOk="1";
        String rresult [] = result.split("/");
        String userid = rresult[0];
        String pno = rresult[1];
        int rpno = Integer.parseInt(pno);
        System.out.println("insert = "+userid + rpno);
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("pno",pno);
        map.put("userid",userid);
        if(bdao.insertM(map)>0){
            isOk="0";
        }

        return isOk;
    }

    @Override
    public void upSuppoters(String result) {
        String rresult [] = result.split("/");
        String pno = rresult[1];
        bdao.updateSuppoters(pno);
    }
}
