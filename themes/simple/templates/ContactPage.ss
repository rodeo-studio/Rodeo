<!DOCTYPE html>
<html lang="en">
  <head>
  	<% base_tag %>
  	<% include GetIncludes %>
  	<% include GetCustomStyles %>
    <script>
 	var fLat = $MapLatitude;
 	var fLng = $MapLongitude;
    </script>
  </head>
  <body>

  <div id="bodypanel" class="contact-view">
    <div class="container-fluid nopadding">
      <% include DisplaySidePanel %>
      <% include DisplayNav %>
	
      <div id="contentpanel" class="animate-move">    
	      <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
	      	<div class="intro-block inner text-giant full style1">
	      	<div class="logo_header"><a href="">Rodeo</a></div>
	      	$Content
			</div>
		  </div>
		  
	      <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
	      	<div class="intro-block inner text-giant full style2">$ContactText</div>
		  </div>
		  
		  <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
		  	<div id="map-canvas"></div>
      	  </div>
		  
	      <% loop PageElements %>
            <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
	          <% if HeroImage %>
		        <div class="image_container"><img src="{$HeroImage.URL}" class="fade_on_load img-responsive"></div>
		      <% end_if %>
		        
		      <% if Content %>	            
	        	<% if TextStyle = 1 %>
	            <div class="intro-block inner text-giant full style1">
	        	<% else_if TextStyle = 2 %>
	            <div class="intro-block inner text-giant full style2 newspaper">
	        	<% else_if TextStyle = 3 %>
	            <div class="intro-block inner text-giant full style1 newspaper">
	        	<% else %>
	        	<div class="intro-block inner text-giant full style2">
	        	<% end_if %>
				$Content</div>                      
		      <% end_if %>		      
			  </div>
	      <% end_loop %>      	      	
		  
		  <% include DisplayFooter %>	  
	  </div>
		
    </div><!-- /.container -->
  </div>
  
  <% include DisplayLoading %>
  <% include DisplayScript %>
  <% include DisplayAnalytics %>
  </body>
</html>