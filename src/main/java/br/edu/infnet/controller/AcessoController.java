package br.edu.infnet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AcessoController {
	
	@GetMapping(value = "/")
	public String init(Model model){
		
		model.addAttribute("nome", "Thiago Lotufo Macedo");
		model.addAttribute("email", "thiago.lotufo@al.infnet.edu.br");
		model.addAttribute("git", "https://github.com/thiagolotufo");
		model.addAttribute("urlImagem", "../img/git-img.png");
		return "index";
	}
}
