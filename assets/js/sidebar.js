/**
 * Created by luoguangwei on 15/8/5.
 */
$(document).ready(function () {
   $("ul.expmenu li > div.header").click(function(){

       var arrow = $(this).find("span.arrow");

       if(arrow.hasClass("glyphicon-chevron-up")){

           arrow.removeClass("glyphicon-chevron-up");
           arrow.addClass("glyphicon-chevron-down");

       }else if(arrow.hasClass("glyphicon-chevron-down")){

           arrow.removeClass("glyphicon-chevron-down");
           arrow.addClass("glyphicon-chevron-up");

       }

       $(this).parent().find("ul.menu").slideToggle();
   });
});