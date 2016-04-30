
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display items in List --%>
<nav id="menu">
<c:if test="${theUser != null}">
    <ul>
         <li>Coins (<span class="count"><c:out value = "${coins}"/></span>) </li>
        <li>Participants (<span class="count"><c:out value = "${numParticipants}"/></span>) </li>
        <li>Participation (<span class="count"><c:out value = "${numParticipation}"/></span>) </li>
        <li><br></li>
        <li><a href="user?action=main">Home</a></li>
        <li><a href="study?action=participate">Participate</a></li>
        <li><a href="study?action=studies">My Studies</a></li>
        <li><a href="recommend.jsp?user=Hello,Kim">Recommend</a></li>
        <li><a href="contact.jsp?user=Hello,Kim">Contact</a></li>
    </ul>
</c:if>
<c:if test="${theAdmin != null }">
		<li><a href="user?action=main">Home</a></li>
        <li><a href="reportques.jsp?user=Hello,Admin">Reported Questions</a></li>
</c:if>
</nav>
<%-- Section tag is used to write description  --%>
<section class="main">
    <h3>How it Works</h3>
    <p>This site was built to help researchers conduct their user studies</p>
    <p>1 participation = 1 coin</p>
    <p><b>To participate,</b> go to "Participate" section and choose a study to complete</p>
    <p><b>To get participants,</b> submit your study here to start getting Participations. Inorder to do so, you must have enough coins in Your account</p>

</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>