package fr.afpa.projetx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.afpa.projetx.models.Utilisateur;
import fr.afpa.projetx.service.UtilisateurService;




@Controller
public class HomeController {

	
	@Autowired
	UtilisateurService utilisteurService;
	
	
	@GetMapping("/home")
	public ModelAndView hello(HttpServletRequest request) {
		
		model.addObject("name", "Spring Boys");
		model.addObject("users", users);
		
		
		return model;
	}
	
	
}
