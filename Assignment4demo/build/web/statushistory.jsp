
<%@ include file= "header.jsp" %> 
<%-- Code to go back to Main page  --%>
<br>
<h3><span id="studies">Status History</span></h3><br/>
<a href="admin.jsp" id="back_to_page">&laquo;Back to the Main Page</a>
<br>
 <div class="table-responsive">
         
<table class="table" >
        <%--Column Names --%>
        <tr>
            <th>Report Date</th>
            <th>Report Question</th>		
            <th>Report Status</th>
            
        </tr>
         
        <c:forEach var="report" items="${reports}">
        <tr>
        <td><c:out value = "${report.reportedDate }"/></td>
        <td><c:out value = "${report.reportQuestion}"/></td>
        <td><c:out value = "${report.status}"/></td>
        <tr>
        </c:forEach>
                         
    </table>
    </div>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>