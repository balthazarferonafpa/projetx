package fr.afpa.projetx.controller;

import fr.afpa.projetx.DAO.AuthenticationFacade;
import fr.afpa.projetx.DAO.AuthenticationFacadeImpl;
import fr.afpa.projetx.DAO.DAOException;
import fr.afpa.projetx.models.Role;
import fr.afpa.projetx.models.User;
import fr.afpa.projetx.service.RoleService;
import fr.afpa.projetx.service.UserService;
import fr.afpa.projetx.validators.loginValidator;
import fr.afpa.projetx.validators.registrationValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.security.Principal;
import java.util.HashSet;
import java.util.Set;


@Controller
public class HomeController {

	@Autowired
	UserService userService;

	@Autowired
	RoleService roleService;


	@Autowired
	UserDetailsService userDetailsService;

	@Autowired
	PasswordEncoder passwordEncoder;

	@Autowired
	AuthenticationFacadeImpl authenticationFacade;

	@Autowired
	registrationValidator registrationValidator
			;

	@Autowired
	loginValidator loginValidator;

	@GetMapping("/")
	public ModelAndView landing(@ModelAttribute("u") User user, @ModelAttribute("ul") User User){
		ModelAndView mnv = new ModelAndView("landing");
		return mnv;
	}


	@GetMapping("/home")
	public ModelAndView hello(HttpServletRequest request) {


		Principal p = authenticationFacade.getAuthentication();

		ModelAndView model = new ModelAndView("home");

		model.addObject("name", "Spring Boys");

		model.addObject("principal", p);
		return model;
	}

	@GetMapping("/admin")
	public ModelAndView admin(HttpServletRequest request) {

		ModelAndView model = new ModelAndView("admin");


		return model;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@Valid @ModelAttribute("ul") User user, BindingResult result) {
		loginValidator.validate(user, result);

		ModelAndView mnv;

		if(result.hasErrors()){
			mnv = new ModelAndView("landing");
			mnv.addObject("tryAgain", 3);
		}else{
//            this.utilisateurDao.
			mnv = new ModelAndView("dashboard");
		}
		return mnv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(@Valid @ModelAttribute("u") User user, BindingResult result){
		ModelAndView mnv;
		registrationValidator.validate(user, result);

		mnv = new ModelAndView("landing");
		if(result.hasErrors()){
			mnv.addObject("tryAgain", 1);
		}else{
			mnv.addObject("tryAgain", 2);
			user.setPassword(passwordEncoder.encode(user.getPassword()));
			Role role = roleService.getRole("ROLE_USER");
			user.getRoles().add(role);
			user.setEnabled(true);
			userService.createUser(user);
//            StringBuffer s = request.getRequestURL();
//            ApplicationContext context = new ClassPathXmlApplicationContext("/configuration/Spring-Mail.xml");
//            MailMail mm = (MailMail) context.getBean("mailMail");
//            mm.sendMail("admin@projetx.com",
//                    utilisateur.getEmail(),
//                    "Activate your ProjetX Account",
//                    "Hello "+utilisateur.getPrenom()+", \n\n Thank you wery much for creating an account on our website. \n\n Please click on the link below to fully activate your account. \n\n"+
//                    "51.254.210.184/projetx/verify/"+r);
		}
		return mnv;
	}


	@RequestMapping(value="/check/{pseudo}", method = RequestMethod.GET)
	public @ResponseBody String test(@PathVariable String pseudo){
		int i = -1;

		String msg = "null";


			System.out.println(pseudo);
			try {
				User u  = this.userService.findByEmail(pseudo);
				System.out.println("Size : "+i);
				System.out.println(u.getRoles());
				if (u.equals(null)) {
					msg = "true";
				} else if(i >= 1) {
					msg = "false";
				}
			} catch (DAOException e) {
				e.printStackTrace();
			}


		return msg;
	}


	@RequestMapping("/dashboard")
	public ModelAndView dashboard(){
		ModelAndView mnv = new ModelAndView("dashboard");
		return mnv;
	}

}
