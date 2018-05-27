package com.icaronascimento.crudanielip.service;

import com.icaronascimento.crudanielip.model.*;

import java.util.List;

public interface ClientesService {

    public List<Clientes> getListarTodosOsClientes();



    public  Clientes getClientesPorId(long id);



    public  void salvarOuAtualizarClientes(Clientes clientes);



    public  void deletarClientes(long id);


}
