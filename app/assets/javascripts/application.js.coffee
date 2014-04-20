//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require semantic-ui
//= require jquery.jgrowl
//= require_tree .

ready = ->
  $(".ui.dropdown").dropdown()
  $(".ui.accordion").accordion()
  $(".ui.checkbox").checkbox()

  $(".message .close").on "click", ->
    $(this).closest(".message").fadeOut()

  $('#main .flash .ui.message').each ->
    status = if $(this).hasClass('error') then 'error' else if $(this).hasClass('success') then 'success' else 'notice'

    $.jGrowl($(this).text(), {
      themeState: status,
      sticky: true
    });
    $(this).hide();

$(document).ready(ready)
$(document).on('page:load', ready)
