// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  $('#categories').DataTable();
});

function validateCourseCategory(formID) {
  $("#" + formID).validate({
    onkeyup: false,
    onfocusout: function (element, event) {
      this.element(element);
    },
    invalidHandler: function () {
      $(this).find(":input.error:first").focus();
    },
    rules: {
      "course_category[name]": {
        required: true,
      },
      "course_category[description]": {
        required: true,
      }
    },
    messages: {
      "course_category[name]": {
        required: "Please fill name",
      },
      "course_category[description]": {
        required: "Please fill description"
      }
    },
    submitHandler: function (form) {
      form.submit();
    }
  });
}
