<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>




<head>
<f:view locale="#{Sessao.locale}">
<f:loadBundle basename="meupacote.rotulos_en_US" var="msgs" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><h:outputText value="#{msgs.titulo}"/></title>
</head>
<body>
<h:form>
<h:commandLink id="en"  actionListener="#{Sessao.setLanguage}" value="{#msgs.ingles}" />

<h:commandLink id="pt" actionListener="#{Sessao.setLanguage}" value="{#msgs.portugues}"/>
<br />

<h:outputText value="#{msgs.nome }" />
<h:inputText value="#{Meubean.nome }" />

<br />
<h:outputText value="#{msgs.email }" />
<h:inputText value="#{Meubean.email }" />
<br />
<h:commandButton value="#{msgs.enviar}" />

</h:form>




</body>

</f:view>
</html>