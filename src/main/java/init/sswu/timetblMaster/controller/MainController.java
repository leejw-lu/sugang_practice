package init.sswu.timetblMaster.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
    @RequestMapping(value="/", method= RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value="/sugang", method= RequestMethod.GET)
    public String sugang() {
        return "sugang";

    }

    @RequestMapping(value="/tbl", method= RequestMethod.GET)
    public String tbl() {
        return "tbl";

    }

    @RequestMapping(value="/whackAMole", method= RequestMethod.GET)
    public String whackAMole() {
        return "whackAMole";

    }


}
