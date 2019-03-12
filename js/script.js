//JavaScript Closure
var date_picker = (function() {
	return function() {
		$("#datepicker_date").datepicker({
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
				incident_type: "Please Select an Incident type",
				incident_date: "Select date",
				description: {
					required: "Please Enter description about Incident",
					maxlength: "Maximum 1000 characters are allowed."
				} 
			},
			submitHandler: function() {
				var form_data = $("#myform").serialize();
				var incident_type = $("#incident_type").val();
				var incident_date = $("#incident_date").val();
				var description = $("#description").val();
				var tBody =
					"<tr><td>" +
					incident_date +
					"</td><td>" +
					incident_type +
					'</td><td class="text-justify">' +
					description +
					"</td><td><button class='btn btn-outline-danger btn-sm delete_button' disabled>Delete</button>" +
					"</td></tr>";
				$.post(
					window.location.origin +
						"/incident_mgmt/index.php/Incident/new_incident",
					form_data,
					function(result) {
						if (result) {
							// var data = JSON.parse(result);
							// console.log(data[0].ID);
							// $("#description").after(
							// 	'<div style="color:green;">' +
							// 		"<p>"+ data[0].ID +"</p></div>"
							// );
							$('#notice').css("display", "block");
							$("#notice").fadeOut(2000, function(){
								$(this).css("display", "none");
							});
							$("tbody").prepend(tBody);

							/**To reset the form after successfully submission */
							$('form').each(function(){
								this.reset();
							});
						}
					}
				);
			}
		});
	};
})();

$(document).ready(function() {
	$('#mytable').DataTable({
		scrollY:        '50vh',
        scrollCollapse: true,
		paging:         false,
		order: false
	});
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
	 				$(element).closest('tr').fadeOut(500,function(){
	    			$(this).remove();
	 				});
				} else {
					alert('Invalid ID.');
				}
			 }
		});
	});

});
