package br.edu.infnet.model.repository;

import org.springframework.data.repository.CrudRepository;

import br.edu.infnet.model.negocio.Usuario;

public interface IUsuarioRepository extends CrudRepository<Usuario, Integer>{

}
