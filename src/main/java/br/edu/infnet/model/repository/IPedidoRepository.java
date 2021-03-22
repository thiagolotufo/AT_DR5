package br.edu.infnet.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.model.negocio.Pedido;

@Repository
public interface IPedidoRepository extends CrudRepository<Pedido, Integer>{

}
