package br.edu.infnet.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import br.edu.infnet.model.negocio.Usuario;

public interface IUsuarioRepository extends CrudRepository<Usuario, Integer>{
	
	@Query("from Usuario u where u.email=:email and u.senha=:senha")
	Usuario autenticacao(String email, String senha);
	
	@Query("from Usuario u where u.nome=:nome")
	List<Usuario> obterLista(String nome, Sort sort);

	@Query("from Usuario u")
	List<Usuario> findAll(Sort by);

	
	
}
