package com.icaronascimento.crudanielip.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Objects;

@Entity
public class Clientes implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    private String cpf;
    private String nome;
    private String email;
    private String dataDeNascimento;
    private String sexo;
    private String estadoCivil;
    private String status;

    public Clientes() {
    }

    public Clientes(Integer id,String cpf, String nome, String email, String dataDeNascimento, String sexo, String estadoCivil, String status) {
        this.id = id;
        this.cpf = cpf;
        this.nome = nome;
        this.email = email;
        this.dataDeNascimento = dataDeNascimento;
        this.sexo = sexo;
        this.estadoCivil = estadoCivil;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Clientes)) return false;
        Clientes clientes = (Clientes) o;
        return Objects.equals(id, clientes.id);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id);
    }
}
