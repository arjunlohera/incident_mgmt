//JavaScript Closure
var date_picker = (function() { 
    return function () {
        $('#datetimepicker1').datepicker({
        endDate: '+0d'
        });
    }
})();

var validate_form = (function() {
    return function() {
        $("form[id='myform']").validate({
            rules: {
              type: "required",
              date: "required",
              description: "required"
            },
            messages: {
            type: "Please Select an Incident type",
            date: "Please Select a Valid date",
            description: "Please Enter description about Incident"
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