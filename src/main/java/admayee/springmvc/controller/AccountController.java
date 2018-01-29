package admayee.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import admayee.springmvc.form.User;
import admayee.springmvc.util.GameCounter;


@Controller
@RequestMapping("/account")
public class AccountController {

	@RequestMapping(value = "/{accountClr}", method = RequestMethod.POST)
    public ModelAndView resetAccounts(User user) throws Exception {
        ModelAndView mav = new ModelAndView();
        //GameCounter.topBuzzer="";
        mav.setViewName("account");
        mav.addObject("user", user);
        return mav;
    }
	
	@RequestMapping(value = "/account", method = RequestMethod.GET)
    public String findAccounts(@ModelAttribute User user,Model model) throws Exception {
        GameCounter.topBuzzer="";
        //System.out.println("AccountController:"+user.getUserName());
        model.addAttribute("user", user );
        return "account";
    }
	
	@RequestMapping(value = "/account", method = RequestMethod.POST)
    public ModelAndView buzzSubmit(User user) {
		ModelAndView mav = new ModelAndView();
		if ("".equals(user.getUserName()) || user.getUserName() == null){
        	mav.setViewName("account");
            return mav;
        }else {
        	synchronized (this) {
	        	if ("".equals(GameCounter.topBuzzer) || GameCounter.topBuzzer== null){
	        		
	        			GameCounter.topBuzzer = user.getUserName();	
					}
	        	}
        }
		
        mav.setViewName("account");
        mav.addObject("user", user);
        return mav;
    }
}