package com.sherold.thecode;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

// Controller annotation
@Controller

// Catch-all annotation for root route
@RequestMapping("/")
public class MainController {
	// GET route for index
	@RequestMapping(value="")
	public String index() {
		return "index.jsp";
	}
	
	// POST route for code
	@RequestMapping(value="/code", method=RequestMethod.POST)
	
	// @RequestParam grabs information from form
	// RedirectAttributes allows access to Flash Data
	public String code(@RequestParam(value="password") String password, RedirectAttributes redirectAttributes) {
		// Event handler for correct 'code'
		if (password.equals("bushido")) {
			return "code.jsp";
		} else {
			// Create error Flash message
			redirectAttributes.addFlashAttribute("error", "You must train harder!");
			
			// Syntax for redirect
			return "redirect:/";					
		}		
	}
}
