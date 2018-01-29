package admayee.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import admayee.springmvc.form.User;
import admayee.springmvc.util.GameCounter;


@Controller
@RequestMapping("/enter")
public class UserController {

	@RequestMapping(value = "/enter", method = RequestMethod.GET)
    public ModelAndView findAllAccounts() throws Exception {
        ModelAndView mav = new ModelAndView();
        //GameCounter.topBuzzer="";
        mav.setViewName("enter");
        mav.addObject("user", new User());
        return mav;
    }
	
	@RequestMapping(value = "/{exit}", method = RequestMethod.POST)
    public ModelAndView resetAccounts(User user) throws Exception {
        ModelAndView mav = new ModelAndView();
        //GameCounter.topBuzzer="";
        mav.setViewName("enter");
        mav.addObject("user", user);
        //GameCounter.removeTeam(user.getUserName());
        return mav;
    }
	
	@RequestMapping(value = "/enter", method = RequestMethod.POST)
    public ModelAndView buzzSubmit(User user) {
		ModelAndView mav = new ModelAndView();
    	mav.addObject("user", user);
    	mav.addObject("firsttime", "firsttime");
    	System.out.println("UserController:"+user.getUserName());
        mav.setViewName("account");
		//GameCounter.topBuzzer="";
		GameCounter.addTeam(user.getUserName());
        return mav;
    }
}