function writeEmailAddress(username)
{
	document.write("<a href=mail" + "to:" + username + "@" + "zurb.com>" + username + "@" + "zurb.com</a>");
}
function writeEmailAddress2(username)
{
	document.write("<a href=mail" + "to:" + username + "@" + "mavencom.com>" + username + "@" + "mavencom.com</a>");
}


function openPopup(windowURL) {
   windowName = "Popup";
   windowFeatures = "top=0,left=0,width=500,height=400,toolbar=yes,location=no,directories=no,status=yes,menuBar=yes,scrollBars=yes,resizable=yes";

   PopupWindow = window.open(windowURL, windowName, windowFeatures);
        }
		
function openPopup2(windowURL) {
   windowName = "Popup";
   windowFeatures = "top=0,left=0,width=630,height=530,toolbar=no,location=no,directories=no,status=no,menuBar=no,scrollBars=no,resizable=no";

   PopupWindow = window.open(windowURL, windowName, windowFeatures);
        }

function MM_openBrWindow(theURL,winName,features) { //v1.2
  window.open(theURL,winName,features);
}
// random images front:
function random_imgfront(){
var zimages=new Array()
zimages[1]="images/front/front1.jpg"
zimages[2]="images/front/front2.jpg"
zimages[3]="images/front/front3.jpg"

var imagelinks=new Array()
imagelinks[1]="embed_sense.htm"
imagelinks[2]="DVRT.htm"
imagelinks[3]="TCLink.htm"

var ry=Math.floor(Math.random()*zimages.length)
if (ry==0)
ry=1
document.write('<a href='+'"'+imagelinks[ry]+'"'+'><img src="'+zimages[ry]+'" width=531 height=172 border=0></a>')
}

// random images1:
function random_imglink(){
var zimages=new Array()
zimages[1]="images/block/blocka1.jpg"


var imagelinks=new Array()
imagelinks[1]="embed_sense.htm"


var imagecopy=new Array()
imagecopy[1]="EmbedSense<Sup>tm</sup> Wireless Sensor EmbedSense is a tiny wireless sensor and data acquisition system."


var ry=Math.floor(Math.random()*zimages.length)
if (ry==0)
ry=1
document.write('<a href='+'"'+imagelinks[ry]+'"'+'><img src="'+zimages[ry]+'" width=171 height=71 border=0><br><ul>'+imagecopy[ry]+'</ul></a>')
}

// random images2:
function random_imglink2(){
var zimages=new Array()
zimages[1]="images/block/blockb1.jpg"
zimages[2]="images/block/blockb2.jpg"
zimages[3]="images/block/blockb3.jpg"
zimages[4]="images/block/blockb4.jpg"

var imagelinks=new Array()
imagelinks[1]="http://www.microstrain.com/white_civil_structure_strain.htm"
imagelinks[2]="http://www.microstrain.com/white_strain_energy_harvesting.htm"
imagelinks[3]="http://www.microstrain.com/white_mind_the_gap.htm"
imagelinks[4]="http://www.microstrain.com/white_wireless_strain_measurement.htm"

var imagecopy=new Array()
imagecopy[1]="Civil Structure Strain Monitoring with Power Efficient, High speed wireless sensor networks"
imagecopy[2]="Strain Energy Harvesting for Wireless Sensor Networks"
imagecopy[3]="Using Wireless Sensors to Measure Gaps Efficiently"
imagecopy[4]="Wireless Strain Measurement Systems - Applications and Solutions"

var ry=Math.floor(Math.random()*zimages.length)
if (ry==0)
ry=1
document.write('<a href='+'"'+imagelinks[ry]+'"'+'><img src="'+zimages[ry]+'" width=171 height=71 border=0><ul>'+imagecopy[ry]+'</ul></a>')
}

// random images3:
function random_imglink3(){
var zimages=new Array()
zimages[1]="images/block/blockc1.gif"
zimages[2]="images/block/blockc2.jpg"
zimages[3]="images/block/blockc4.gif"

var imagelinks=new Array()
imagelinks[1]="news.htm"
imagelinks[2]="news.htm"
imagelinks[3]="news.htm"

var imagecopy=new Array()
imagecopy[1]="Crack Team Move Liberty Bell. Engineers will be keeping close tabs on the bell..."
imagecopy[2]="Using Wireless Sensors to Measure Gaps Efficiently at Ford"
imagecopy[3]="MicroStrain wins Navy contract for self powered wireless sensor networks"

var ry=Math.floor(Math.random()*zimages.length)
if (ry==0)
ry=1
document.write('<a href='+'"'+imagelinks[ry]+'"'+'><img src="'+zimages[ry]+'" width=171 height=71 border=0><br><ul>'+imagecopy[ry]+'</ul></a>')
}


window.onError=null;
//browser sensing:
go=0
rollOver=0;
browserName = navigator.appName;
browserVer = parseInt(navigator.appVersion);
if (browserName == "Netscape" && browserVer >= 3) rollOver = 1;
else if (browserName == "Microsoft Internet Explorer" && browserVer >= 4) rollOver = 1;

if (rollOver==1) {

// preload off images:
// <!-------------------main rollovers----------------------->
var products_off = new Image(); products_off.src="images/nav_products1.gif";
var buy_off = new Image(); buy_off.src="images/nav_buy1.gif";
var new_off = new Image(); new_off.src="images/nav_new_ideas1.gif";
var company_off = new Image(); company_off.src="images/nav_company1.gif";
var contact_off = new Image(); contact_off.src="images/nav_contact1.gif";


// preload on images
// <!-------------------main rollovers----------------------->
var products_on = new Image(); products_on.src="images/nav_products2.gif";
var buy_on = new Image(); buy_on.src="images/nav_buy2.gif";
var new_on = new Image(); new_on.src="images/nav_new_ideas2.gif";
var company_on = new Image(); company_on.src="images/nav_company2.gif";
var contact_on = new Image(); contact_on.src="images/nav_contact2.gif";


function imgOn(imgName) {
        if (document.images) {
        document[imgName].src = eval(imgName + "_on.src");
        }
}
function imgOff(imgName) {
       if (document.images) {
           document[imgName].src = eval(imgName + "_off.src");
       }
}
}
// <!-------------------contact------------------------------->
function verifyForm() {
	var errors = false;
	var errorList = "Please fill in these required fields:\n"
	if (document.submitForm.first_name.value == "") {
		errors = true;
		errorList = errorList + "First Name\n";
	}
	if (document.submitForm.last_name.value == "") {
		errors = true;
		errorList = errorList + "Last Name\n";
	}
	if (document.submitForm.email_address.value == "") {
		errors = true;
		errorList = errorList + "Email Address\n";
	}
	else {
		var atLoc = document.submitForm.email_address.value.lastIndexOf("@");
		var lastDot = document.submitForm.email_address.value.lastIndexOf(".");
		if (atLoc == -1 || lastDot < atLoc) {
			errors = true;
			errorList = errorList + "Invalid Email Format\n";
		}
	}
	if (document.submitForm.your_interest.value == "") {
		errors = true;
		errorList = errorList + "What is your interest?\n";
	}
	if (document.submitForm.how_hear.selectedIndex == 0) {
		errors = true;
		errorList = errorList + "How did you hear about us?\n";
	}
	if (errors == true) {
		alert(errorList);
		return false;
	}
	return true;
}
