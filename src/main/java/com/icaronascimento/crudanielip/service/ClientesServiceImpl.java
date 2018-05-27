package com.icaronascimento.crudanielip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icaronascimento.crudanielip.model.Clientes;
import com.icaronascimento.crudanielip.repository.ClientesRepository;


@Service
@Transactional
public class ClientesServiceImpl implements ClientesService {

    @Autowired
    ClientesRepository clientesRepository;

    @Override
    public List<Clientes> getListarTodosOsClientes() {
        return (List<Clientes>) clientesRepository.findAll();
    }

    @Override
    public Clientes getClientesPorId(long id) {
        return clientesRepository.findById(id).get();
    }

    @Override
    public void salvarOuAtualizarClientes(Clientes Clientes) {
        clientesRepository.save(Clientes);
    }

    @Override
    public void deletarClientes(long id) {
        clientesRepository.deleteById(id);
    }

}

