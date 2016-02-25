<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<html>
<head>
<title>First JSF Example</title>
</head>

<body>
	<h3>JSF 2.2 Hello World Example</h3>
<h:form>
What's your name?
<h:inputText value="#{produit.name}"></h:inputText>
	<h:commandButton value="Welcome Me" action="welcome"></h:commandButton>
</h:form>
</body>
</html>
</f:view>