$( "#btn_add" ).click(function() {
  ajaxAction('add');
});

function ajaxAction(action) {
	data = $("#frm_"+action).serializeArray();
	$.ajax({
	  type: "POST",  
	  url: "response.php",  
	  data: data,
	  dataType: "json",       
	  success: function(response)  
	  {
		$('#msg').html('');
	  	if(response.status) {
	  		$('#'+action+'_model').modal('hide');
			$('#msg').html('<div class="alert alert-success">Successfully! added record</div>');
			get_employee();
	  	} else {
	  		$('#msg').html('<div class="alert alert-danger ">Error! to insert record</div>');	
	  	}
		
	  },
	  error: function(jqXHR, textStatus, errorThrown) {
		  $('#msg').html('<div class="alert alert-danger ">Error'+textStatus+'!'+errorThrown);
		}  
	});
}