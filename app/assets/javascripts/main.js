// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ajax:success', '#game_select', function (event,data){
	//var out =  $(event).find("#ajaxload") ;
	//$('.modal-body').html("gg "+out.html());
	//$('#buffer').html(data);
	//var out =  $('#buffer').find("#ajaxload") ;
	$("#Result").modal('show');
	console.log(data);
});