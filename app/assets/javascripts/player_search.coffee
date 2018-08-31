# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

_submit = (racketNo) ->
  target = document.getElementById('player_search')
  target.racket_id2.value = racketNo
  target.submit()
  return