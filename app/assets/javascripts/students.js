/*
$( document ).ready(function() {
    $('#step').stepy({
       titleClick:   true
    } );
    //alert("fgfg");
});
*/
var ready = function (){
	$('#step').stepy({
       titleClick:   true
    } );
}
$(document).ready(ready);
$(document).on('page:load', ready);