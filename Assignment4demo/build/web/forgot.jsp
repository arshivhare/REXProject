
<%-- Include tag is used to import header page --%>
<%@include file="header.jsp" %>
<%-- Section to input login details --%>
<br/>
    <form class="form-horizontal" action="user" method="post">
    <p style="text-align:center;">Enter Email Address to send the link</p>
        <input type="hidden" name="action" value="forgot">
        	<div class="form-group">
       		 	<label class="col-sm-4 control-label" >Email Address </label>
        	<div class="col-sm-4">
        		<input type="email"  class="form-control" name="email" required/>
        	</div>
       		</div>
       
         <div class="form-group">
    	<div class="col-sm-offset-4 col-sm-10">
        <input type="submit" value="Send" class="btn btn-primary" >
		</div>
		</div>
    </form>
<br/>
<br/>
<br/>

    <%-- Include tag is used to import footer page --%>
<%@include file="footer.jsp" %>