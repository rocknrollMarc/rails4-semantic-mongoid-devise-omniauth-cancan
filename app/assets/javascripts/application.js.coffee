//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require semantic-ui
//= require_tree .

ready = ->
  $(".ui.dropdown").dropdown()
  $(".ui.accordion").accordion()
  $(".ui.checkbox").checkbox()

  $(".message .close").on "click", ->
    $(this).closest(".message").fadeOut()

$(document).ready(ready)
$(document).on('page:load', ready)
