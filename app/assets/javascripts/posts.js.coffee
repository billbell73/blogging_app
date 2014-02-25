# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
	$('.button_to').on 'ajax:success', (e, data, status, xhr) ->
		e.preventDefault()
		$(".vote-count[data-id=#{data.id}]").text("Votes: " + data.votes)

#	$('.button_to').on 'click', (e) ->
#		e.preventDefault()

#		$.post(this.href, ->
#			this.trigger('ajax:success')
			


