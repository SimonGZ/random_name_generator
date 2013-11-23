# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

disableInputs = ->
	if $('#nametype').val() == 'first'
		$('#race').prop('disabled', true)
		$('#gender').prop('disabled', false)
	if $('#nametype').val() == 'last'
		$('#race').prop('disabled', false)
		$('#gender').prop('disabled', true)
	if $('#nametype').val() == 'full'
		$('#race').prop('disabled', false)
		$('#gender').prop('disabled', false)

$(document).ready ->
	disableInputs()
	$('#nametype').change ->
		disableInputs()
		