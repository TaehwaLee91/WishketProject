package wishket.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GuideController {

    @GetMapping("/guide/guide")           // 이용방법
    public String guide(){
        return "guide/guide.tiles";
    }

    @GetMapping("/guide/postscript")  // 이용후기
    public String postscript() {return "guide/postscript.tiles";}

    @GetMapping("/customer-support/client")  // 클라이언트 고객센터
    public String customer1() {return "customer-support/client.tiles";}

    @GetMapping("/customer-support/partner")  // 파트너스 고객센터
    public String customer2() {return "customer-support/partner.tiles";}

    @GetMapping("/customer-support/price")  // 이용요금
    public String customer3() {return "customer-support/price.tiles";}

}
