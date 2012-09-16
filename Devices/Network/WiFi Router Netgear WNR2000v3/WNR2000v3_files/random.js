var theImages = new Array() 

theImages[0] = 'https://my.netgear.com/Images/pr/Gearhead-banner1-new.gif'
theImages[1] = 'https://my.netgear.com/Images/pr/Gearhead-banner2-new.gif'
theImages[2] = 'https://my.netgear.com/Images/pr/Gearhead-banner3-new.gif'
theImages[3] = 'https://my.netgear.com/Images/pr/Gearhead-banner4-new.gif'
theImages[4] = 'https://my.netgear.com/Images/pr/Gearhead-banner5-new.gif'


var j = 0
var p = theImages.length;

var preBuffer = new Array()
for (i = 0; i < p; i++){
   preBuffer[i] = new Image()
   preBuffer[i].src = theImages[i]
}

var whichImage = Math.round(Math.random()*(p-1));
function showImage(){
document.write('<img src="'+theImages[whichImage]+'" border="0">');
}