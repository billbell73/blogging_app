# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
	$('.button_to').on 'ajax:success', (e, data, status, xhr) ->
		console.log(e)
		$(".vote-count[data-id=#{data.id}]").text(data.votes)