<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Lista de Clientes</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container" style="margin-top: 3%;">

    <spring:url value="/addClientes" var="addURL" />
    <a class="btn btn-primary float-right" href="${addURL}" role="button" >Cadastrar Novo Cliente </a>

    <spring:url value="/" var="addURL" />
    <a class="btn btn-primary float-right" href="${addURL}" role="button" >Voltar para tela inicial </a>


    <h2>Painel de Clientes</h2>
    <table class="table table-striped">
        <thead>
        <th scope="row">CPF</th>
        <th scope="row">Nome</th>
        <th scope="row">Email</th>
        <th scope="row">Data de Nascimento</th>
        <th scope="row">Sexo</th>
        <th scope="row">Estado Civil</th>
        <th scope="row">Ativo</th>

        </thead>
        <tbody>
        <c:forEach items="${clientesList }" var="clientesList" >
            <tr>
                <td>${clientesList.cpf }</td>
                <td>${clientesList.nome }</td>
                <td>${clientesList.email }</td>
                <td>${clientesList.dataDeNascimento }</td>
                <td>${clientesList.sexo }</td>
                <td>${clientesList.estadoCivil }</td>
                <td>${clientesList.ativo }</td>

                <td>
                    <spring:url value="updateClientes/${clientesList.id}" var="updateURL" />
                    <a class="hyperlink" href="${updateURL }" role="link" >Alterar</a>
                </td>
                <td>
                    <spring:url value="deleteClientes/${clientesList.id}" var="deleteURL" />
                    <a class="hyperlink" href="${deleteURL }" role="link" >Deletar</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
</body>
</html>