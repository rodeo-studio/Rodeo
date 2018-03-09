define([
  'underscore', 
  'backbone'
], function(_, Backbone){

  var ImagesView = Backbone.View.extend({
    initialize: function(){
    },   
    load: function(){
      var self = this;

	  // do we have an image to wait for?
	  if ($('.main-image').length == 0) {
        // fire event
        app.dispatcher.trigger("ImagesView:imagesready", self);                                          	  	
	  }

	  $('img').imagesLoaded()
  	    .progress( function(instance, image) {
  	      if ($(image.img).hasClass('main-image')) {
            // fire event
            app.dispatcher.trigger("ImagesView:imagesready", self);                                          	  	
  	      } 
        if ($(image.img).hasClass('fade_on_load')) {  
		      var nRnd = 100 * (Math.floor(Math.random() * 6) + 1);
		      setTimeout(function(){
  		  	  $(image.img).css('opacity', 1);
		      }, nRnd);
    	  }
  	  });    
    }
  });

  return ImagesView;
});
