function show_group_popup() {
  $('groups_show').show();
  win = new Window({title: "Share This", width:200, height:150, destroyOnClose: true, recenterAuto:false});
  win.setContent('groups_show',true,true);
  win.show();
}

$(document).ready(function(){
	$(".completed-topics-and-reviews").on("click", function(){
		$('.positive').trigger('click');
		$('.negative').trigger('click');
	})

  $('.booking-tab').on('shown.bs.tab', function (e) {
    $('#calendar').fullCalendar('render');
  })
})