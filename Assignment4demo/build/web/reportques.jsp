
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to go back to Main page  --%>
<br>
<h3><span id="studies">Reported Questions</span></h3><br/>
<a href="admin.jsp?user=Hello,Admin" id="back_to_page">&laquo;Back to the Main Page</a><br/>
<br/><br/><br/>


<!-- TODO: Add more code to get the table here.
  -->
  <div class="table-responsive">
  <table class="table" >
        <%--Column Names --%>
        <tr>
            <th>Question</th>
            <th>Action</th>		
        </tr>
        
        <c:forEach var="report" items="${reports }">
        <c:if test="${report.status == 'Under Review'}">
        <tr>
            <%-- First study details --%>
            <td><c:out value = "${report.reportQuestion }"/></td>
            <td>
            <form action="request.jsp" method="post">
            <input type="submit" class="btn btn-primary" formaction="study?action=approve&studycode=<c:out value = "${report.studyCode}"/>"  value="Approve">
            <input type="submit" class="btn btn-primary" formaction="study?action=disapprove&studycode=<c:out value = "${report.studyCode}"/>"  value="Dispprove">
            </form>
           </td>
             </tr>
             </c:if>
          </c:forEach>  
                        
        </table>
        </div>
  
  
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>