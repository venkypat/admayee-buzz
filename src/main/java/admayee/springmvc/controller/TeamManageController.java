package admayee.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import admayee.springmvc.form.User;
import admayee.springmvc.util.GameCounter;


@Controller
@RequestMapping("/manage")
public class TeamManageController {

	@RequestMapping(value = "/manage", method = RequestMethod.GET)
    public ModelAndView showTeams() throws Exception {
        ModelAndView mav = new ModelAndView();
        //GameCounter.topBuzzer="";
        mav.setViewName("manage");
        //mav.addObject("user", new User());
        return mav;
    }
	
	@RequestMapping(value = "/manage", method = RequestMethod.POST)
    public ModelAndView startGame() {
		ModelAndView mav = new ModelAndView();
        //GameCounter.topBuzzer="";
        mav.setViewName("manage");
        //mav.addObject("user", new User());
        return mav;
    }
	
	@RequestMapping(value = "/{add}", method = RequestMethod.POST)
    public ModelAndView addTeam(User user) {
		ModelAndView mav = new ModelAndView();
    	mav.setViewName("manage");
        GameCounter.topBuzzer="";
        GameCounter.buzzed = false;
		GameCounter.addTeam(user.getUserName());
        return mav;
    }
	
	/*@RequestMapping(value = "/{remove}", method = RequestMethod.POST)
    public ModelAndView removeTeam(User user) {
		ModelAndView mav = new ModelAndView();
    	mav.setViewName("manage");
        GameCounter.topBuzzer="";
		GameCounter.removeTeam(user.getUserName());
        return mav;
    }*/
}