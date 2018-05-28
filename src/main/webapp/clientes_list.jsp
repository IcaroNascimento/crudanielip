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
    <a class="btn btn-primary float-right" href="${addURL }" role="button" >Add New Cliente</a>

    <h2>Lista de Clientes List</h2>
    <table class="table table-striped">
        <thead>
        <th scope="row">CPF</th>
        <th scope="row">Nome</th>
        <th scope="row">Email</th>
        <th scope="row">Data de Nascimento</th>
        <th scope="row">Sexo</th>
        <th scope="row">Estado Civil</th>
        <th scope="row">Status</th>
        <th scope="row">Update</th>
        <th scope="row">Delete</th>
        </thead>
        <tbody>
        <c:forEach items="${clientesList }" var="clientes" >
            <tr>
                <td>${clientes.cpf }</td>
                <td>${clientes.nome }</td>
                <td>${clientes.email }</td>
                <td>${clientes.dataDeNascimento }</td>
                <td>${clientes.sexo }</td>
                <td>${clientes.estadoCivil }</td>
                <td>${clientes.status }</td>
                <td>
                    <spring:url value="updateClientes/${clientes.id}" var="updateURL" />
                    <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
                </td>
                <td>
                    <spring:url value="deleteClientes/${clientes.id}" var="deleteURL" />
                    <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
</body>
</html>