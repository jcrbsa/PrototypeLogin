<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Meu Primeiro JSF</title>

<f:view>
	<h:form id="formulario">
Digite seu nome:
<h:inputText id="nome" value="#{MeuBean.nome}" required="true" />
		<h:commandButton action="#{MeuBean.acao}" value="Enviar" id="submit" />

		<br />
		<h:messages />


	</h:form>
</f:view>

</head>
<body>

</body>
</html>