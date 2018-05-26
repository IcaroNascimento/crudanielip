package com.icaronascimento.crudanielip.model;


import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name ="Clientes")
public class Clientes implements Serializable {

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

    @Column(name="status")
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
