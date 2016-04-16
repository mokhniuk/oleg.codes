randomDuration =->
	$('img').each	->
		n = (Math.floor(Math.random() * (3 - 1) + 1)) / 10
		$(this).attr('data-wow-delay', n + 's')

showImages = ->
	randomDuration()
	$('img').addClass('wow fadeIn')	

loadAnimation = ->
	$.adaptiveBackground.run()
	
ready = ->
	loadAnimation()
	showImages()
	
	new WOW().init()



$(document).ready ->
  ready()