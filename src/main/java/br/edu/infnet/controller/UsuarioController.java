package br.edu.infnet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import br.edu.infnet.model.negocio.Usuario;
import br.edu.infnet.model.service.UsuarioService;

@Controller	
@SessionAttributes("user")
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping(value = "/usuario")
	public String mostrarDetalhe(Model model) {
		
		model.addAttribute("usuarios", usuarioService.obterLista());
		
		return "usuario/detalhe";
	}
	
	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario){
		
		usuarioService.incluir(usuario);
		
		return "redirect:/";
	}
	
	@GetMapping(value = "/usuario/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id, @SessionAttribute("user") Usuario usuario) {
		
		try {
			if(usuario.getPedido() == null && usuario.getCliente() == null) {
				usuarioService.excluir(id);
			} else {
				model.addAttribute("msg", "Não é possível exlcluir!");
				return mostrarDetalhe(model);
			}
		} catch (Exception e) {
			model.addAttribute("msg", "Não é possível exlcluir!");
			return mostrarDetalhe(model);
		}
		
		return "redirect:/usuario";
	}
	
	@PostMapping(value = "/usuario/login")
	public String login(Model model, @RequestParam String email, @RequestParam String senha) {
		
		Usuario usuario = usuarioService.autenticacao(email, senha);
		
		if(usuario != null) {
			
			model.addAttribute("user", usuario);
			
			return "redirect:/home";
		}
		
		model.addAttribute("msg", " Usuário ou senha incorretos!");
		
		return "login";
	}
}
