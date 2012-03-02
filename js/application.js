

(function($){
	
	$(function() {
		$('#disqus_thread').disqus({
			domain:     "roca-style",
			title:      document.title,
			developer:  window.location.hostname.match(/localhost|0\.0\.0\.0|127\.0\.0\.1/) ? 1 : 0,
			show_count: true,
			prettify:   false,
			markdown:   false,
			// iframe_css: "http://somewhere.com/stylesheets/disqus.css",
			ready: function() {
				// this is when your disqus comments finally load
				console.log("Comment count: " + $.disqus.commentCount().toString());
				console.log("Reaction count: " + $.disqus.reactionCount().toString());
			},
			added: function(comments) {
				// do something with the newly added comment divs.
			},
			edit: function(textarea) {
				// called when someone clicks the "reply" button.
			}
		});
	});

}(jQuery))