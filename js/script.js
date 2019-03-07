//JavaScript Closure
var date_picker = (function() { 
    return function () {
        $('#incident_date').datepicker({
        endDate: '+0d'
        });
    }
})();

var validate_form = (function() {
    return function() {
        $("form[id='myform']").validate({
            rules: {
              type: "required",
              incident_date: "required",
              description: {
                  required: true,
                  maxlength: 1000
              }
            },
            messages: {
            type: "Please Select an Incident type",
            incident_date: "Please Select a Valid date",
            description: {
                required: "Please Enter description about Incident",
                maxlength: "Maximum 1000 characters are allowed."
            }
            },
            submitHandler: function (form) {
            form.submit();
            }
        });
    }
}

)();

$(document).ready(function() {
    date_picker();
    validate_form();
});