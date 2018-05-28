<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Clientes Form</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <spring:url value="/saveClientes" var="saveURL" />
    <h2>Clientes</h2>
    <form:form modelAttribute="clientesForm" method="post" action="${saveURL }" cssClass="form" >
        <form:hidden path="id"/>
        <div class="form-group">
            <label>CPF</label>
            <form:input path="cpf" cssClass="form-control" id="cpf" />
        </div>
        <div class="form-group">
            <label>Nome</label>
            <form:input path="nome" cssClass="form-control" id="nome" />
        </div>
        <div class="form-group">
            <label>Email</label>
            <form:input path="email" cssClass="form-control" id="email" />
        </div>
        <div class="form-group">
            <label>Data de Nascimento</label>
            <form:input path="dataDeNascimento" cssClass="form-control" id="dataDeNascimento" />
        </div>
        <div class="form-group">
            <label>Sexo</label>
            <form:input path="sexo" cssClass="form-control" id="sexo" />
        </div>
        <div class="form-group">
            <label>Estado Civil</label>
            <form:input path="estadoCivil" cssClass="form-control" id="estadoCivil" />
        </div>
        <div class="form-group">
            <label>status</label>
            <form:input path="status" cssClass="form-control" id="status" />
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form:form>

</div>
</body>
</html>