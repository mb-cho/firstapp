# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('.bt_delete').click ->
    if confirm('Delete ?' + $(this).attr("value"))
      location.href = 'delete?id=' + $(this).attr("value")
    return
    
  $('.bt_update').click ->
    location.href = 'update?id=' + $(this).attr("value")
    return
    
  return
  