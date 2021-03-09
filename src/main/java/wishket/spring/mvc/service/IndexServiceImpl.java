package wishket.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wishket.spring.mvc.dao.IndexDAO;
import wishket.spring.mvc.vo.IndexVO;

import java.util.ArrayList;
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
    public List<IndexVO> readList(String s) {
        return idao.selectList(s);
    }

    @Override
    public String countCash() {
        List<IndexVO> cashList;
        cashList = idao.countCash();

        int i =0;
        for(IndexVO ivo : cashList){
            String cash = ivo.getAvailableBudget();
            // ex) 1~2년차/2/13000000*1~2년차/2/1300000   ,  1~2년차/2/13000000,    13000000
            if(cash.contains("*")){
                String reg1 [] = cash.split("\\*");

                for(String a   : reg1){
                    String reg2 []= a.split("/");
                    int b = Integer.parseInt(reg2[1].replaceAll("[^0-9]",""));
                    System.out.println("*a => "+b);
                    int c = Integer.parseInt(reg2[2].replaceAll("[^0-9]",""));
                    System.out.println("*b => "+c);
                    i += b*c;
                    System.out.println("*=> " +i);
                }

            }else if(cash.contains("/")){
                String reg1[] = cash.split("/");
                int a = Integer.parseInt(reg1[1].replaceAll("[^0-9]",""));
                System.out.println("/c => "+a);

                int b = Integer.parseInt(reg1[2].replaceAll("[^0-9]",""));
                System.out.println("/c => "+b);
                i += a*b;
                System.out.println("/=>"+i);
            }else {
                cash = cash.replaceAll("[^0-9]","");
                i += Integer.parseInt(cash);
                System.out.println("z = " + Integer.parseInt(cash));
            }
        }

        System.out.println("억으로 나누기 전 값 :" + i);
        double a = i/100000000.0;
        System.out.println("억으로 나눈 값 =" + a );
        String s = String.format("%.2f",a);

        return s;
    }
}