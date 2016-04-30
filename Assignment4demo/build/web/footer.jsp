
<%-- Section to display description --%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<section class="copyright">
    &copy; Researchers Exchange Participations 
     <c:if test="${cookie.hostName.value != null}">
     	<c:out value="${cookie.hostName.value }"></c:out>
     </c:if>
</section>
</body>
</html>

