<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Alterar Cadastro</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <script  type="text/javascript" >
        function valida() {
        if (document.getElementById("cpf").value == "") {
            window.alert("Preencha o campo CPF");
            document.getElementById("cpf").focus();
            return false;
        }
        if (document.getElementById("nome").value == "") {
            window.alert("Preencha o campo Nome");
            document.getElementById("nome").focus();
            return false;
        }
        if (document.getElementById("email").value == "") {
            window.alert("Preencha o campo Email");
            document.getElementById("email").focus();
            return false;
        }
        if (document.getElementById("dataDeNascimento").value == "") {
            window.alert("Preencha o campo Data De Nascimento");
            document.getElementById("dataDeNascimento").focus();
            return false;
        }
    }

    </script>
</head>
<body>
<div class="container">
    <spring:url value="/saveClientes" var="saveURL" />
    <h2>Painel do Cliente</h2>
    <form:form modelAttribute="clientesFormAlterar" method="post" action="${saveURL }" cssClass="form" onsubmit="return valida();" >
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
            <form:radiobutton path="sexo" value="Masculino"/>Masculino
            <form:radiobutton path="sexo" value="Feminino"/>Feminino
        </div>
        <div class="form-group">
            <label>Estado Civil</label>
            <select id="estadoCivil" name="estadoCivil">
                <option value="Solteiro">Solteiro</option>
                <option value="Casado">Casado</option>
                <option value="Separado">Separado</option>
                <option value="Divorciado">Divorciado</option>
                <option value="Viuvo">Viuvo</option>
            </select>

        </div>
        <div class="form-group">
            <label>Ativo</label>
            <form:checkbox path="ativo" value="Ativo"/>
        </div>
        <button type="submit" class="btn btn-primary">Alterar</button>
    </form:form>

    <spring:url value="/listaDeClientes" var="addURL" />
    <a class="btn btn-primary float-right" href="${addURL}" role="button" >Voltar para o Painel de clientes </a>

</div>
</body>
</html>