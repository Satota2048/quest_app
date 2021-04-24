// $(function () {
//   $(document).on("mouseover", "h2", function () {
//     $(this).css({ "color": "blue" });
//   }).on("mouseout", "h2", function () {
//     $(this).css({ "color": "" });
//   })
// });
$(function(){
  var getH = new Date().getHours();
  if((getH >= 5) && (getH < 10)) { $('.top-page-header').removeClass('night').addClass('morning'); }
  else if( (getH >= 10) && (getH < 16) ) { $('.top-page-header').removeClass('morning').addClass('noon'); }
  else if( (getH >= 16) && (getH < 18) ) { $('.top-page-header').removeClass('noon').addClass('afternoon'); }
  else if( (getH >= 18) || (getH < 5) ) { $('.top-page-header').removeClass('afternoon').addClass('night'); }
  });