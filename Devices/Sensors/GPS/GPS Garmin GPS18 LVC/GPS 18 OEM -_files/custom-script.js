
function bn_getLocale(){
	if( BaynoteAPI.isNotEmpty(BaynoteAPI.getCookieValue("GarminLocalePref", ".garmin.com") ) ){
		return BaynoteAPI.getCookieValue("GarminLocalePref", ".garmin.com");
	}
	return "";
}


function bn_onClickHandler(clickedElement, exitInfo){
	if(clickedElement == undefined) 
			return false;

	var exitResult = false;
	
	if(typeof(bnObserver) != 'undefined' && typeof(bnObserver.defaultExitConfirmation) != 'undefined') {
		exitResult = bnObserver.defaultExitConfirmation(clickedElement,exitInfo);
	}
	
	if(clickedElement) {		
		if(exitInfo != null && typeof(exitInfo.attrs) == "undefined") {
            exitInfo.attrs = new Object();
         }	
		var destUrl = exitInfo.dest;
		var locale = bn_getLocale();		
		exitInfo.dest = BaynoteAPI.addURLParam(destUrl, "Locale" , locale ) ;
	}
	
	return exitResult;
}

function myPreHandler(tag) { 

	if (typeof tag != 'undefined' &&  typeof tag.type != 'undefined' && tag.type==bnConstants.OBSERVER_TAG)   {	
		
		tag.docAttrs.Locale = bn_getLocale();
		tag.url = BaynoteAPI.addURLParam(BaynoteAPI.getFullURL(), "Locale" , bn_getLocale() ) ;
		if ( BaynoteAPI.isNotEmpty(document.referrer) )
			tag.referrer =  BaynoteAPI.addURLParam(document.referrer, "Locale" , bn_getLocale() ) ;
		tag.exitConfirmation = bn_onClickHandler;
		
	} // code that runs before the observer fires
  
	/*if (typeof tag != 'undefined' &&  typeof tag.type != 'undefined' && tag.type==bnConstants.GUIDE_TAG)   {	
		//do stuff before recs have loaded
	}*/
	
    return true;      
} 

function myPostHandler(tag) {
/*
	if (typeof tag != 'undefined' &&  typeof tag.type != 'undefined' && tag.type==bnConstants.GUIDE_TAG)   {	
		//do stuff after recs have loaded
		}
*/
	return true;
}

   // register the event handler
baynote_globals.onBeforeTagShow.push(myPreHandler);
baynote_globals.onTagShow.push(myPostHandler); 
bnResourceManager.registerResource(baynote_globals.ScriptResourceId); 