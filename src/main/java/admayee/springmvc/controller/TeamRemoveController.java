package admayee.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import admayee.springmvc.form.User;
import admayee.springmvc.util.GameCounter;


@Controller
@RequestMapping("/remove")
public class TeamRemoveController {

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
    public ModelAndView removeTeam(User user) {
		ModelAndView mav = new ModelAndView();
    	mav.setViewName("manage");
        GameCounter.topBuzzer="";
		GameCounter.removeTeam(user.getUserName());
        return mav;
    }
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
    public ModelAndView removeTeam2(User user) {
		ModelAndView mav = new ModelAndView();
    	mav.setViewName("manage");
        GameCounter.topBuzzer="";
		GameCounter.removeTeam(user.getUserName());
        return mav;
    }
}