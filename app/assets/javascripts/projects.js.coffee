# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$(document).delegate "#start_test", 'click', ->
		scenario_names = $("input:checkbox:checked").map(-> 
			return $(this).prop('checked', this.checked).val()
		).get()
		console.log(scenario_names)

		$.ajax
			url: "/projects/start_test"
			data:
			  scenario_names: scenario_names
			type: "post"