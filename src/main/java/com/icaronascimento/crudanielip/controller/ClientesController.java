package com.icaronascimento.crudanielip.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.icaronascimento.crudanielip.model.Clientes;
import com.icaronascimento.crudanielip.service.ClientesService;

@Controller
public class ClientesController {


    @Autowired
    private ClientesService clientesService;

    @RequestMapping(value="/")
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("clientes_list");
        List<Clientes> clientesList = clientesService.getListarTodosOsClientes();
        model.addObject("clientesList", clientesList);

        return model;
    }

    @RequestMapping(value="/addClientes", method=RequestMethod.GET)
    public ModelAndView addClientes() {
        ModelAndView model = new ModelAndView();

        Clientes clientes = new Clientes();
        model.addObject("clientesForm", clientes);
        model.setViewName("clientes_form");

        return model;
    }

    @RequestMapping(value="/updateClientes/{id}", method=RequestMethod.GET)
    public ModelAndView editClientes(@PathVariable long id) {
        ModelAndView model = new ModelAndView();

        Clientes clientes = clientesService.getClientesPorId(id);
        model.addObject("clientesForm", clientes);
        model.setViewName("clientes_form");

        return model;
    }

    @RequestMapping(value="/saveClientes", method=RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("clientesForm") Clientes clientes) {
        clientesService.salvarOuAtualizarClientes(clientes);

        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value="/deleteClientes/{id}", method=RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") long id) {
        clientesService.deletarClientes(id);

        return new ModelAndView("redirect:/");
    }
}



