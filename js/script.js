//JavaScript Closure
var date_picker = (function() {
	return function() {
		$("#datepicket_date").datepicker({
			endDate: "+0d"
		});
	};
})();

var validate_form = (function() {
	return function() {
		$("form[id='myform']").validate({
			rules: {
				incident_type: "required",
				incident_date: "required",
				description: {
					required: true,
					maxlength: 1000
				}
			},
			messages: {
				incidetn_type: "Please Select an Incident type",
				incident_date: "Please Select a Valid date",
				description: {
					required: "Please Enter description about Incident",
					maxlength: "Maximum 1000 characters are allowed."
				}
			},
			submitHandler: function(form) {
				var form_data = $("#myform").serialize();
				var incident_type = $("#incident_type").val();
				var incident_date = $("#incident_date").val();
				var description = $("#description").val();
				var sno = 1;
				var tBody =
					"<tr><td>" +
					incident_date +
					"</td><td>" +
					incident_type +
					'</td><td class="text-justify">' +
					description +
					"</td><td><a class='btn btn-outline-success btn-sm' href='#' role='button'>Delete</a>" +
					"</td></tr>";
				var incident_description = $("#description").val();
				$.post(
					window.location.origin +
						"/incident_mgmt/index.php/Incident/new_incident",
					form_data,
					function(result) {
						if (result) {
							$("#description").after(
								'<div style="color:green;">' +
									"<p>(Row inserted successfully.)</p></div>"
							);
							$("tbody").prepend(tBody);
						}
					}
				);
			}
		});
	};
})();

$(document).ready(function() {
	date_picker();
	validate_form();
	$('.delete_button').click(function(){
		var element = this;
		var del_id = this.id;
		$.ajax({
			url: window.location.origin + "/incident_mgmt/index.php/Incident/delete_incident",
			type: 'POST',
			 data: { id:del_id },
			 success: function(response) {
				if(response){
					// Remove row from HTML Table
	 				$(element).closest('tr').css('background','tomato');
	 				$(element).closest('tr').fadeOut(800,function(){
	    			$(this).remove();
	 				});
				} else {
					alert('Invalid ID.');
				}
			 }
		});
	});

});
