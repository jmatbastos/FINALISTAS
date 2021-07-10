$(document).ready(function() {
   
   $('.js-like-article').on('click', function(e) {
        e.preventDefault();
        var $link = $(e.currentTarget);
		if ($link.attr('href') != '#') {
				$link.toggleClass('fa-heart-o').toggleClass('fa-heart');


				$.post($link.attr('href'),
					function(data, status){
						object = JSON.parse(data);
						$('.js-like-article-count').html(object.hearts);
				});
				
				$link.attr('href', '#' );
		}
});

});