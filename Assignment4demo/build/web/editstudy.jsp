
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<script type="text/javascript" src="js/editstudy.js">
</script>
<%-- Code to display Page Name --%>
<h3 id="page_name">Editing a study</h3>
<%-- Code to go back to Main page  --%>
<a href="main.jsp" id="back_to_page">&laquo;Back to the Main Page</a>
<%-- Section to input study details --%>
<section>
    <form class="form-horizontal" action="study" method="post">
    
       <input type="hidden" name="action" value="update">
       <input type="hidden" name="studycode" value="<c:out value = "${study.studyCode }"/>">
    	<div class="form-group">
        <label class="col-sm-4 control-label">Study Name *</label>
        <div class="col-sm-4">
        <input type="text" class="form-control" name="study_name"  required value=<c:out value="${study.studyName }"/> />
         </div>
            </div>
        
        <div class="form-group">
        <label class="col-sm-4 control-label">Question Text *</label>
        <div class="col-sm-4">
        <input type="text" class="form-control" name="question_text"  required value="<c:out value = "${study.question }"/>" />
         </div>
            </div>
        
        
        <%-- Img tag is used to import image --%>
        <div class="form-group">
        <label class="col-sm-4 control-label">Image *</label>
        <div class="col-sm-4">
        <img src="images/placeholder.jpg" class="img-responsive" height="50" width="75" alt="Edit"/>
       
        <select name="image-url">
  <option value="computer.jpg">Computer</option>
  <option value="small_tree.jpg">Small Tree</option>
		</select>
       
         </div>
            </div>
        
        
        <div class="form-group">
        <label class="col-sm-4 control-label"># Participants *</label>
         <div class="col-sm-4"> 
        <input type="text" class="form-control" name="participants" required value=<c:out value="${study.numofParticipants } "/> />
         </div>
            </div>
        
        <div class="form-group">
        <label class="col-sm-4 control-label"># Answers *</label>
        <div class="col-sm-4">
        <select class="form-control" id="edit_study_answers" name="answers">  
             <option value="3">3</option>
       	   	 <option value="4">4</option>
        	 <option value="5">5</option>
        </select> 
         </div>
            </div>
        
        <input type ="hidden" name="numbers" id="numbers" value="${study.answers.size()}"/>
        <c:forEach var="i" begin="0" end="${study.answers.size()-1}">
   	    <input type ="hidden" name="values" id="${i}" value="${study.answers.get(i)}"/>
        </c:forEach>
        
        <div id="TextBoxContainer1">
    <!--Textboxes will be added here -->
		</div>
       
       
       <div class="form-group">
        <label class="col-sm-4 control-label">Description *</label>
         <div class="col-sm-4"> 
        <textarea name="description" class="form-control"  required><c:out value = "${study.description }"/></textarea>
         </div>
            </div>
        
        <div class="form-group">
        <div class="col-sm-offset-5 col-sm-4">
        <button type="submit"  class="btn btn-primary">Update</button>
         </div>
            </div>
            <br/><br/><br/>
    </form>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>