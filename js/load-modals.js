var content;
var i;
var modals = [
	"atl-modal",
	"ny-modal",
	"nyl-modal",
	"dtown-modal",
	"upto-modal",
	"gc-modal",
	"bit-modal",
	"vybe-modal",
	"samplify-modal",
	"noc-modal"
];

for (i = 0; i < modals.length; i++) {
	$.get('modals/' + modals[i] + '.html', function(data){
    	content = data;
    	$('#models').prepend(content);
	});
}