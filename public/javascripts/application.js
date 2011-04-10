jQuery(function() {  

	$("a.add_employee").fancybox({
		'autoDimensions' : true,
		'scrolling' : 'no'
	});
	
	$("a.next").click(function(){
		var nextButton = $(this);
		$("fieldset.employee-partition").each( function(){
			// alert( $(this).attr('class') ); // shows the class
			var current_display = $(this).css('display');
			if( current_display == 'block'){
				if(  $(this).hasClass("first") ){
					$("fieldset.second").show();
					$("a.back").show();
					$(this).hide();
					return false;
				}
				
				if( $(this).hasClass("second") ){
					$("fieldset.third").show();
					$("fieldset#submitform").show();
					$("input#formsubmit").show();
					$(this).hide();
					nextButton.hide();
					return false;
				}
			}
		});
	});
	
	$("a.back").click(function(){
		var backButton = $(this);
		$("fieldset.employee-partition").each( function(){
			// alert( $(this).attr('class') ); // shows the class
			var current_display = $(this).css('display');
			if( current_display == 'block'){
				if(  $(this).hasClass("second") ){
					$("fieldset.first").show();
					backButton.hide();
					$(this).hide();
					$("input#formsubmit").hide();
					return false;
				}
				
				if( $(this).hasClass("third") ){
					$("fieldset.second").show();
					$("a.next").show();
					$("input#formsubmit").hide();
					$("fieldset#submitform").hide();
					$(this).hide();
					return false;
				}
			}
		});
	});
		
});


