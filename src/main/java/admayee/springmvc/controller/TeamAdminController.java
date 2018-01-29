package admayee.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import admayee.springmvc.form.User;
import admayee.springmvc.util.GameCounter;


@Controller
@RequestMapping("/admin")
public class TeamAdminController {

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView showTeams() throws Exception {
        ModelAndView mav = new ModelAndView();
        //GameCounter.topBuzzer="";
        mav.setViewName("admin");
        //mav.addObject("user", new User());
        return mav;
    }
	
	@RequestMapping(value = "/{clear}", method = RequestMethod.POST)
    public ModelAndView clearBuzzer() {
		ModelAndView mav = new ModelAndView();
    	mav.setViewName("admin");
        GameCounter.topBuzzer="";
        GameCounter.buzzed = false;
		//GameCounter.addTeam(user.getUserName());
        return mav;
    }
	
	/*@RequestMapping(value = "/{manage}", method = RequestMethod.POST)
    public ModelAndView manageTeams() {
		ModelAndView mav = new ModelAndView();
    	mav.setViewName("manage");
        GameCounter.topBuzzer="";
		//GameCounter.addTeam(user.getUserName());
        return mav;
    }
	*/
	@RequestMapping(value = "/{clear}", method = RequestMethod.GET)
    public ModelAndView refreshBuzzer() {
		ModelAndView mav = new ModelAndView();
    	mav.setViewName("admin");
        //GameCounter.topBuzzer="";
		//GameCounter.addTeam(user.getUserName());
        return mav;
    }
    

}