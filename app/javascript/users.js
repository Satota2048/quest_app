$(function () {
  $(document).on("mouseover", "#sign-up", function () {
    $(this).css({ "color": "blue" });
  }).on("mouseout", "#sign-up", function () {
    $(this).css({ "color": "" });
  })
});