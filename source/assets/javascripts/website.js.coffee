randomDuration =->
	$('img').each	->
		n = (Math.floor(Math.random() * (3 - 1) + 1)) / 10
		$(this).attr('data-wow-delay', n + 's')

showImages = ->
	randomDuration()
	$('img').addClass('wow fadeIn')	

loadAnimation = ->
	$.adaptiveBackground.run()
	
typeText = ->
	$('.type-it').typeIt 
		content: "I'm quite good in developing flexible, adaptive, elegant and well-thought-out web interfaces with HTML5 (slim), CSS3 (SCSS), JavaScript (jQuery, CoffeeScript), Rails and Middleman."
		speed: 50

ready = ->
	typeText()
	loadAnimation()
	showImages()
	
	new WOW().init()



$(document).ready ->

  ready()
