$(function(){
  var getH = new Date().getHours();
  if((getH >= 4) && (getH < 6)) { $('.top-page-header').removeClass('night3').addClass('morning'); }
  else if( (getH >= 6) && (getH < 8) ) { $('.top-page-header').removeClass('morning').addClass('morning2'); }
  else if( (getH >= 8) && (getH < 10) ) { $('.top-page-header').removeClass('morning2').addClass('morning3'); }
  else if( (getH >= 10) && (getH < 12) ) { $('.top-page-header').removeClass('morning3').addClass('noon'); }
  else if( (getH >= 12)&& (getH < 15) ) { $('.top-page-header').removeClass('noon').addClass('noon2');}
  else if( (getH >= 15) && (getH < 17) ) { $('.top-page-header').removeClass('noon2').addClass('noon3'); }
  else if( (getH >= 17) && (getH < 18) ) { $('.top-page-header').removeClass('noon3').addClass('afternoon'); }
  else if( (getH >= 18) && (getH < 19) ) { $('.top-page-header').removeClass('afternoon').addClass('afternoon2'); }
  else if( (getH >= 19) && (getH < 23) ) { $('.top-page-header').removeClass('afternoon2').addClass('night'); }
  else if( (getH >= 23) || (getH < 3) ) { $('.top-page-header').removeClass('night').addClass('night2'); } 
  else if( (getH >= 3) && (getH < 6) ) { $('.top-page-header').removeClass('night2').addClass('night3'); } 
});