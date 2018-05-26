package com.icaronascimento.crudanielip.control;

import com.icaronascimento.crudanielip.model.Clientes;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "/clientes")
public class ClientesControl {


    @RequestMapping(method = RequestMethod.GET)
    public List<Clientes> listarClientes() {


        Clientes cliente1 = new Clientes(1, "25584447771", "JoaoMoreira", "joaomoreira@gmail.com", "15/07/1992", "Masculino", "Solteiro", "Ativo");

        List<Clientes> listaDeClientes = new ArrayList<>();
        listaDeClientes.add(cliente1);

        return listaDeClientes;
    }


}
