$(function(){
  var getH = new Date().getHours();
  if((getH >= 4) && (getH < 6)) { $('.top-page-header').removeClass('night3').addClass('morning'); }
  else if( (getH >= 6) && (getH < 8) ) { $('.top-page-header').removeClass('morning').addClass('morning2'); }
  else if( (getH >= 8) && (getH < 12) ) { $('.top-page-header').removeClass('morning2').addClass('noon'); }
  else if( (getH >= 12)&& (getH < 16) ) { $('.top-page-header').removeClass('noon').addClass('noon2');}
  else if( (getH >= 16) && (getH < 17) ) { $('.top-page-header').removeClass('noon').addClass('afternoon'); }
  else if( (getH >= 17) && (getH < 19) ) { $('.top-page-header').removeClass('afternoon').addClass('afternoon2'); }
  else if( (getH >= 19) && (getH < 21) ) { $('.top-page-header').removeClass('afternoon2').addClass('night'); }
  else if( (getH >= 21) && (getH < 23) ) { $('.top-page-header').removeClass('night').addClass('night2'); } 
  else if( (getH >= 23) || (getH < 4) ) { $('.top-page-header').removeClass('night2').addClass('night3'); } 
});