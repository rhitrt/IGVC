function openWindow(mypage, myname, w, h){
	var scroll = 'yes';
	var winl = (screen.width-w)/2;
	var wint = (screen.height-h)/2;
	var settings ='height='+h+',';
	settings +='width='+w+',';
	settings +='top='+wint+',';
	settings +='left='+winl+',';
	settings +='scrollbars='+scroll+',';
	settings +='resizable=yes';
	win=window.open(mypage,myname,settings);

	if(parseInt(navigator.appVersion) >= 4){
		win.window.focus();
	}
} 

function openWindow2(theURL,winName,features) {
	window.open(theURL,winName,features);
}

function imageWindow(url) {
	window.open(url,'imageWindow','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=no,width=100,height=100,screenX=150,screenY=150,top=150,left=150')
}

function print(URL){
  window.open(URL,'PrintReceipt','width=768,height=600,menubar=yes,resize=yes,statusbar=no,toolbar=no,scrollbars=yes,navbar=no');
}

function clearValue(input) {
	input.value='';
}