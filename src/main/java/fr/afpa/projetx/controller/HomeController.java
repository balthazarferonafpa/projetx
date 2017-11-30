package fr.afpa.projetx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;




@Controller
public class HomeController {


	
	
	@GetMapping("/home")
	public ModelAndView hello(HttpServletRequest request) {

		ModelAndView model = new ModelAndView("home");

		model.addObject("name", "Spring Boys");
		
		return model;
	}

	@GetMapping("/admin")
	public ModelAndView admin(HttpServletRequest request) {

		ModelAndView model = new ModelAndView("admin");


		return model;
	}
	
	
}
