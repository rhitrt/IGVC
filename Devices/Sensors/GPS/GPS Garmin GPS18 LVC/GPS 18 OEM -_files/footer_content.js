var checkJqLoadFoot;
var footLoaded = false;
function checkFootLoadFunc() {
	//console.log("checkLoadFunc here, what is readyState? ", document.readyState);
	// if (document.readyState === "complete") {
	// 	var head= document.getElementsByTagName('head')[0];
	// 	var script= document.createElement('script');
	// 	script.type= 'text/javascript';
	// 	script.onload = loadMenu;
	// 	script.onreadystatechange = function() {
	// 		//console.log("readystate changed!",document.readyState);
	// 		if (document.readyState === "loaded" || document.readyState === "complete"){
	// 			script.onreadystatechange = null;
	// 			loadMenu();
	// 		}
	// 	}
	// 	script.src= 'https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js';
	// 	head.appendChild(script);
	// 	clearInterval(checkJqLoadFoot);
	// }
	if (typeof(jQuery) != 'undefined') {
		clearInterval(checkJqLoadFoot);
		loadFooter();
	}

}

function loadFooter() {
	//console.log("loadMenu here, eh!", document.readyState);

	if (typeof footerCountry == 'undefined') {
		footerCountry = 'us';
	}
	//jQuery("#footer").load("https://www.garmin.com/" + footerCountry + "/embeds/footer_content/");
	jQuery.ajax({
		url:"https://www.garmin.com/us/embeds/footer_content_json",
		data:{'country':footerCountry},
		dataType:"jsonp",
		cache:true,
		jsonpCallback:"jsonp9465316487953",
		success:function(data) {
			if (footLoaded == false) {
				footerNavSuccess(data);
			}
		}
	});

}
function jsonp9465316487953(data) {
    //console.log("inside the json callback, baby!!", data);
    if (footLoaded == false) {
		footerNavSuccess(data);
	}
}
function footerNavSuccess(data) {
	footLoaded = true;
    jQuery("#footer").html(data.html);
}
//if jQuery is loaded, start loading the nav
//if not, put jquery into the head of the page
if (typeof(jQuery) == 'undefined') {
	if (typeof checkJqLoadFoot == 'undefined') {
		checkJqLoadFoot = setInterval(checkFootLoadFunc,20);
	}
} else {
	loadFooter();
}
