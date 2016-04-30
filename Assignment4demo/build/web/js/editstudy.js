var i = 1;
var j =0; 

$(document).ready(function() {
var answers = document.getElementById('numbers').value;

$("#edit_study_answers").val(answers);
while(j < answers){
        var div = $("<div />");
    div.html(GetDynamicTextBox(document.getElementById(j).value));
    $("#TextBoxContainer1").append(div);
    j++;
    i++;
    }


     $('#edit_study_answers').change(function() {
    	 answers = $(this).val();
         $("#TextBoxContainer1").html("");
         i = 1;
         while(answers > 0){
	            var div = $("<div />");
         		div.html(GetDynamicTextBox(""));
         		$("#TextBoxContainer1").append(div);
         		answers--;
         		i++;
         }
     });
});

function GetDynamicTextBox(value) {

   return '<div class="form-group"><label class="col-sm-4 control-label">Answer '+i+' *</label><div class="col-sm-4"><input name = "DynamicTextBox" class="form-control" type="text" required value = "' + value + '" /></div></div>'
}