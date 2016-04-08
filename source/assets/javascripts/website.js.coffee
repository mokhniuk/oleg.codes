showImages = ->
	imagesLoaded('img').on 'progress', (imagesLoadedInstance, image) ->
		$('img').addClass('show')
		

loadAnimation = ->
	$.adaptiveBackground.run()
	
	

ready = ->
	showImages()


$(window).on 'load', loadAnimation()
$(document).ready ->
  ready()