jQuery(function($) {
	$('#analysis_search').autocomplete({
		source: $('#analysis_search').data('autocomplete-source'),
		select: function( event, ui ) {
			$("#analysis_search").val( ui.item.label );
			$("#selected_analysis").val( ui.item.id );
			return false;
		}
	});
	$('#search_btn').click(function() { 
		$("#search_form").submit();
	});
	$('#search_dropdown').click(function() {
		$(this).toggleClass('inactive_search_dropdown');
		$('#advanced_search_wrapper').toggle();
	});
	$('#cant_find_dropdown').click(function() {
		$(this).toggleClass('inactive_cant_find_dropdown');
		$('#cant_find_wrapper').toggle();
	});
	$('.advanced_search_option_btn').click(function() {
		$(this).find('input:checkbox').prop('checked', function (idx, oldAttr) {
			return !oldAttr;
		});
  });
	$('form').on('click', '.remove_fields', function(event) {
    $(this).closest('.field').remove();
    event.preventDefault();
  });
  $('form').on('click', '.add_fields', function(event) {
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $(this).before($(this).data('fields').replace(regexp, time));
    event.preventDefault();
  });
	$('#search_form').on('ajax:success', function(e, data, status, xhr){
		$('#search_results').html(data);
	});
	$('#analysis_search').each(function() {
	  var elem = $(this);
	  elem.data('oldVal', elem.val());
	  elem.bind("propertychange keyup input paste", function(event){
	  	if (elem.val() == "nickcage") {
				var r1=Math.floor(Math.random()*11);
				var r2=Math.floor(Math.random()*11);
	    	$("body").css("background-image", "url('http://www.placecage.com/"+r1+"00/"+r2+"00')");
	      $("body").css("background-repeat", "repeat");
	    } else if (elem.val() == "billmurray") {
				var r1=Math.floor(Math.random()*11);
				var r2=Math.floor(Math.random()*11);
				$("body").css("background-image", "url('http://www.fillmurray.com/"+r1+"00/"+r2+"00')");
	      $("body").css("background-repeat", "repeat");
			}	
		});
	});
});