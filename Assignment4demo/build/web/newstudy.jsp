
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<script type="text/javascript" src="js/newstudy.js">
</script>
<%-- Code to display Page Name --%>
<h3 id="page_name">Adding a study</h3>
 <%-- Code to go Back to the Main Page  --%>
<a href="main.jsp" id="back_to_page">&laquo;Back to the Main Page</a>
<%-- Section to create new study --%>
<section>
    <form class="form-horizontal" action="study" method="post">
    
    <input type="hidden" name="action" value="add"/>
    	<div class="form-group">
        <label class="col-sm-4 control-label">Study Name *</label>
        <div class="col-sm-4">
        <input type="text" class="form-control" name="study_name" required />
         </div>
            </div>
        
        <div class="form-group">
        <label class="col-sm-4 control-label">Question Text *</label>
        <div class="col-sm-4">
        <input type="text" class="form-control" name="question_text" required/>
         </div>
            </div>
        
        <div class="form-group">
        <label class="col-sm-4 control-label">Image *</label>
        <div class="col-sm-4">
        <select name="image-url">
  		<option value="computer.jpg">Computer</option>
  		<option value="small_tree.jpg">Small Tree</option>
		</select>
         </div>
            </div>
        
        
        <div class="form-group">
        <label class="col-sm-4 control-label"># Participants *</label>
        <div class="col-sm-4">
        <input type="text" class="form-control" name="participant_text" required/>
         </div>
            </div>
        
        <div class="form-group">
        <label class="col-sm-4 control-label"># Answers *</label>
        <div class="col-sm-4">
        <select name="answers" class="form-control" id="new_study_answers">
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select> <br>
         </div>
            </div>
        
        
        <div id="TextBoxContainer">
    	<!-- Textboxes will be added here -->
		</div>
       
        
        <div class="form-group">
        <label class="col-sm-4 control-label">Description *</label>
        <div class="col-sm-4">
        <textarea name="description" class="form-control" required></textarea>
         </div>
            </div>
        
        <div class="form-group">
        <div class="col-sm-offset-5 col-sm-4">
        <button type="submit"  class="btn btn-primary">Submit</button>
        <br/><br/><br/>
         </div>
            </div>
    </form>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>