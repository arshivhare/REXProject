
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%@taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<%-- Code to display items in List --%>
<nav id="menu">
    <ul>
         <li>Coins (<span class="count"><c:out value = "${coins}"/></span>) </li>
         <li>Participants (<span class="count"><c:out value = "${numParticipants}"/></span>) </li>
        <li>Participation (<span class="count"><c:out value = "${numParticipation }"/></span>) </li>
        <li><br></li>
        <li><a href="home.jsp?user=Hello,Kim">Home</a></li>
        <li><a href="study?action=participate">Participate</a></li>
        <li><a href="study?action=studies">My Studies</a></li>
        <li><a href="recommend.jsp?user=Hello,Kim">Recommend</a></li>
        <li><a href="contact.jsp?user=Hello,Kim">Contact</a></li>
    </ul>

</nav>
<%-- Section to display studies and participate in that study--%>
<div>
   
     <h3 class="text-left"><span class="label label-default " >Studies</span>
     <span ><a class="label label-default" href="study?action=report">Report History</a></span></h3>
     </div>
     
    <%-- Display the studies in the table --%>
    <%-- Clicking on Participate button displays Question.jsp page where 
            you can rate the question--%>
     <div class="table-responsive">
    <table class="table" >
        <%--Column Names --%>
        <tr>
            <th>Study Name</th>
            <th>Image</th>      
            <th>Question</th>
            <th>Action</th>
            <th>Report</th>
        </tr>
        <c:forEach items="${studies}" var="study">
        <input type="hidden" name="action" value="<c:out value = "${study.email}"/>">
        <input type="hidden" name="action" value="<c:out value = "${user}"/>">
        <c:if test="${study.email != user}">
        <c:if test="${study.status == 'start'}">
        <tr>
            <%-- First study details --%>
            <td><c:out value = "${study.studyName}"/></td>
            <td><img src="images/<c:out value = "${study.imageURL}"/>"></td>
            <td><c:out value = "${study.question}"/></td>
            <td><form action="study?studycode=<c:out value = "${study.studyCode }"/>" method="post">
            <input type="hidden" name="action" value="participate">
            <input type="submit" class="participate_button" value="participate" /></form></td>
            <td><form action="study?studycode=<c:out value = "${study.studyCode}"/>" method="post">
            <input type="hidden" name="action" value="report">
               <input type="hidden" name="questioncode" value="<c:out value = "${study.questionCode}"/>">
            <input type="submit" class="participate_button" value="Report" /></form></td>
		</tr>
		</c:if>
		</c:if>
        </c:forEach>
    </table>
    </div>


<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>