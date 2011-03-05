$(".input.date input").datepicker();
$("#new_booking").validate({
  rules: {
    "booking[email]": {
      required: true,
      email: true
    },
    "booking[name]": {
      required: true
    },
    "booking[arrive]": {
      required: true
    },
    "booking[depart]": {
      required: true
    },
    "booking[phone_number]": {
      required: true
    }
  }
});
