// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function validateCourseAttachment(formID) {
  $("#" + formID).validate({
    onkeyup: false,
    onfocusout: function (element, event) {
      this.element(element);
    },
    invalidHandler: function () {
      $(this).find(":input.error:first").focus();
    },
    rules: {
      "course_attachment[course_id]": {
        required: true,
      },
      "course_attachment[attachment]": {
        required: true,
      }
    },
    messages: {
      "course_attachment[course_id]": {
        required: "Please select",
      },
      "course_attachment[attachment]": {
        required: "Please upload a pdf file"
      }
    },
    submitHandler: function (form) {
      form.submit();
    }
  });
}
