# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

function show_group_popup() {
  $('groups_show').show();
  win = new Window({title: "Share This", width:200, height:150, destroyOnClose: true, recenterAuto:false});
  win.setContent('groups_show',true,true);
  win.show();
}