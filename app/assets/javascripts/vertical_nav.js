	$(document).ready(function() {
    $('.verticalnav > li > a').click(function(){
      $(this).parent().toggleClass('open')
		$(this).siblings().toggle();
	});
    	});