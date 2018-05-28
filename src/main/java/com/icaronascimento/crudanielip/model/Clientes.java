package com.icaronascimento.crudanielip.model;


import org.hibernate.validator.constraints.br.CPF;

import javax.persistence.*;


@Entity
@Table(name ="Clientes")
public class Clientes  {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private long id;

    @Column(name="cpf")
    private String cpf;

    @Column(name="nome")
    private String nome;

    @Column(name="email")
    private String email;

    @Column(name="dataDeNascimento")
    private String dataDeNascimento;

    @Column(name="sexo")
    private String sexo;

    @Column(name="estadoCivil")
    private String estadoCivil;

    @Column(name="ativo")
    private boolean ativo;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDataDeNascimento() {
        return dataDeNascimento;
    }

    public void setDataDeNascimento(String dataDeNascimento) {
        this.dataDeNascimento = dataDeNascimento;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }

}
