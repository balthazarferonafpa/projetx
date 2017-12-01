package fr.afpa.projetx.controller;

import fr.afpa.projetx.models.User;
import fr.afpa.projetx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


@Controller
public class HomeController {

	@Autowired
	UserService userService;

	@Autowired
	UserDetailsService userDetailsService;

	@Autowired
	PasswordEncoder passwordEncoder;
	
	@GetMapping("/home")
	public ModelAndView hello(HttpServletRequest request) {

		User u = userService.findByEmail("jt@email.com");

		System.out.println(u.getRoles());


		ModelAndView model = new ModelAndView("home");

		model.addObject("name", "Spring Boys");
		model.addObject("user", u);
		return model;
	}

	@GetMapping("/admin")
	public ModelAndView admin(HttpServletRequest request) {
		UserDetails ud = null;
		try {
			ud = userDetailsService.loadUserByUsername("jt@email.com");
		} catch (UsernameNotFoundException e) {
			e.printStackTrace();
		}
		System.out.println(ud.getAuthorities());
		ModelAndView model = new ModelAndView("admin");
		model.addObject("details", ud);

		return model;
	}

	@GetMapping("/login")
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("login");
		return model;
	}

	@GetMapping("/register")
	public ModelAndView register(@ModelAttribute("u") User user, ModelMap model){
		ModelAndView mnv = new ModelAndView("register");
		return mnv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(@Valid @ModelAttribute("u") User user, BindingResult result, BindingResult resultL, ModelMap model){
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		ModelAndView mnv = new ModelAndView("admin");

		userService.createUser(user);

		return mnv;
	}
	
}
