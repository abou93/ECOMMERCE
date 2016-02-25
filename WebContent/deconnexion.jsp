<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<script>
function dormir(s) {
	
    sleep(s);  
    window.alert("Vous êtes déconnecté!");
}
</script>
<f:view>
<jsp:include page="./header.jsp" />

<jsp:include page="./nav.jsp" />

	<%
		session.invalidate();
	%>
	<script> dormir(1000); </script>
	<%
		response.sendRedirect("./index.jsp");
		
	%>
        
<jsp:include page="./footer.jsp" />
</f:view>