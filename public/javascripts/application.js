jQuery(function() {  


	$("a.add_employee").fancybox({
		'autoDimensions' : true,
		'scrolling' : 'no'
	});
	
	$("a.add_family").fancybox({
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
					$("fieldset.second").fadeIn(3000);
					$("a.back").fadeIn();
					$(this).fadeOut();
					return false;
				}
				
				if( $(this).hasClass("second") ){
					$("fieldset.third").fadeIn(3000);
					$("fieldset#submitform").fadeIn();
					$("input#formsubmit").fadeIn();
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
					$("fieldset.first").fadeIn(3000);
					backButton.hide();
					$(this).hide();
					$("input#formsubmit").hide();
					return false;
				}
				
				if( $(this).hasClass("third") ){
					$("fieldset.second").fadeIn(3000);
					$("a.next").show();
					$("input#formsubmit").hide();
					$("fieldset#submitform").hide();
					$(this).hide();
					return false;
				}
			}
		});
	});
	
	
	$("a.breadcrumb-selector").click(function(){
	
		var contentId =  $(this).attr('contentId');
		
		$("a.breadcrumb-selector").each(function(){
			if( $(this).hasClass("active")){
				var currentContentId = $(this).attr("contentId");
				$(this).removeClass("active");
				$("div#" + currentContentId).hide();
			}
		});
		
		$("div#" + contentId).fadeIn();
		$(this).addClass("active");
		return false;
	});
	
	$("form.ajax_form").submit(function(){
		var theForm = $(this);
		$.ajax({type: "POST", url: $(this).attr("action"), data: $(this).serialize(), 
		 	dataType: "script",
			success: function(html){
					$.fancybox.close();
					theForm.clearForm();
			}
		});
		
		
		
		return false;
	});
		
});

$.fn.clearForm = function() {
  return this.each(function() {
 var type = this.type, tag = this.tagName.toLowerCase();
 if (tag == 'form')
   return $(':input',this).clearForm();
 if (type == 'text' || type == 'password' || tag == 'textarea')
   this.value = '';
 else if (type == 'checkbox' || type == 'radio')
   this.checked = false;
 else if (tag == 'select')
   this.selectedIndex = -1;
  });
};



