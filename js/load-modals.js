var content;
var i;
var modals = [
	"atl-modal",
	"ny-modal",
	"nyl-modal",
	"dtown-modal"
];

for (i = 0; i < modals.length; i++) {
	$.get('modals/' + modals[i] + '.html', function(data){
    	content = data;
    	$('#models').prepend(content);
	});
}