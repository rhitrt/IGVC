//timer variables
var t_start=0;
var t_end=0;

//size of the test file
var size_kilobits=8928;

//speed in kb/second that determines result
var speed_threshold_00=500;
var speed_threshold_01=1500;
var calculatedSpeed=0;

function runTest(){
	//check for cookie, otherwise run test	
	calculatedSpeed=Get_Cookie('bandwidth_detail');
	if (calculatedSpeed!=null && calculatedSpeed!=""){		
		displayResult();
	}else {		
		//reset test variables
		t_start=0;
		t_end=0;
		calculatedSpeed=0;
		//run test
		loadImage();
	}	
}

function loadImage(){
	var url = "https://static.garmincdn.com/apps/components/compatibilityCheck/bandwidth_test_image.png?gver=" + (new Date().getTime()) + Math.random();
    var img = new Image();
    var timeout;
    
    img.onload=function() {     
    	clearTimeout(timeout);
    	calculateSpeed();
    };    

    img.onerror=function(){
    	clearTimeout(timeout);
    	indicateError();
    };

    img.onabort=function(){
    	clearTimeout(timeout);
    	indicateError();
    };    

    t_start = new Date().getTime();
    timeout = setTimeout(triggerTimeout, 18000);       
    img.src=url;
    
    function triggerTimeout(){
    	img.src = null;
    	indicateTimeout();
    };
}

//determine performance based on timer result
function calculateSpeed(){
	t_end=new Date().getTime();
	
	download_time=t_end-t_start;
	seconds = download_time/1000;
	calculatedSpeed = Math.round(size_kilobits/seconds);
	
	//set cookie
	if (calculatedSpeed!=null && calculatedSpeed!=""){		
		Set_Cookie("bandwidth_detail", calculatedSpeed);		
	}	
	displayResult();
}	

//for a timeout, indicate a slow connection speed
function indicateTimeout(){
	calculatedSpeed = 50;	
	displayResult();
}

//if there is an error, show the best connection speed
function indicateError(){
	calculatedSpeed = 3000;	
	displayResult();
}

function displayResult(){	
	jQuery("#bandwidthCheckThinking").hide(); 

	if(calculatedSpeed < speed_threshold_00){
		displayNotOkay();
	}else if(calculatedSpeed < speed_threshold_01){
		displayMaybeOkay();	
	}else{			
		displayOkay();
	}
}

function displayOkay(){
	jQuery("#bandwidthCheckOkay").show(); 
	jQuery("#bandwidthCheck").removeClass('ok maybeOK notOK').addClass("ok").hide().fadeIn();
}

function displayMaybeOkay(){
	jQuery("#bandwidthCheckMayBeOkay").show(); 
	jQuery("#bandwidthCheck").removeClass('ok maybeOK notOK').addClass("maybeOK").hide().fadeIn();
}

function displayNotOkay(){
	jQuery("#bandwidthCheckNotOkay").show(); 
	jQuery("#bandwidthCheck").removeClass('ok maybeOK notOK').addClass("notOK").hide().fadeIn();
}