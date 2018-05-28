<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Sistema de Cadastro</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container" style="margin-top: 3%;">
<h1>Sistema de Cadastro</h1>
    <spring:url value="/addClientes" var="addURL" />
    <a class="btn btn-primary float-right" href="${addURL}" role="button" >Cadastrar Novo Cliente </a>

    <spring:url value="/listaDeClientes" var="addURL" />
    <a class="btn btn-primary float-right" href="${addURL}" role="button" >Consultar Cliente </a>

</div>
</body>
</html>