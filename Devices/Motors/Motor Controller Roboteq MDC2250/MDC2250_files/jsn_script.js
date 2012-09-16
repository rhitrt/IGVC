/**
	* @copyright Copyright (C) 2006 - 2008 JoomlaShine.com
	* @author JoomlaShine.com
	* @license Commercial Proprietary
	* Please visit http://www.joomlashine.com for more information
*/

/* Utilites */
//jsnAddEvent - attach a function to an event
function jsnAddEvent(target, event, func){ 
	if (target.addEventListener){ 
		target.addEventListener(event, func, false); 
		return true; 
	} else if (target.attachEvent){ 
		var result = target.attachEvent("on"+event, func); 
		return result; 
	} else { 
		return false; 
	}
}

function jsnCheckSubstring(targetString, targetSubstring, delimeter)
{
	var parts = targetString.split(delimeter);
	for (var i = 0; i < parts.length; i++){
		if (parts[i] == targetSubstring) return true;
	}
	return false;
}

function jsnGetElementsByClass(targetParent, targetTag, targetClass)
{
	if(!targetParent.getElementsByTagName) return;
	
	var elements, tags;
	
	tags = targetParent.getElementsByTagName(targetTag);
	elements = [];
	
	for(var i=0;i<tags.length;i++){
		if(jsnCheckSubstring(tags[i].className, targetClass, " ")){
			elements[elements.length] = tags[i];
		}
	}
	
	return elements;
}

function jsnDigTag(targetTag, targetName, digLevel)
{
	if(digLevel) {
		var n, d;
		n = targetTag.childNodes;
		for(var i=0;i<n.length;i++){
			d = n[i];
			if(d.tagName == targetName)
				return jsnDigTag(d, targetName, --digLevel);
		}
	}
	return targetTag;
}

function jsnWriteCookie(name,value,days)
{
	if (days) {
		var date = new Date();
		date.setTime(date.getTime()+(days*24*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	} else expires = "";
	
	document.cookie = name+"="+value+expires+"; path=/";
}

function jsnReadCookie(name)
{
	var nameEQ = name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}


/* Menu functions */
function jsnMakeDivMenu(menuClass)
{
	var lists = jsnGetElementsByClass(document, "UL", menuClass);
	for(var i=0;i<lists.length;i++){
		var list = lists[i];
		var listItems;
		
		if(list != undefined) {
			listItems = list.getElementsByTagName("LI");
			listItems[0].style.border = "none";
		}
	}
}

function jsnMakeIconMenu(menuClass, icons)
{
	var lists = jsnGetElementsByClass(document, "UL", menuClass);
	var iconId = 0;
	
	for(var i=0;i<lists.length;i++){
		var list = lists[i];
		var listItems;
		
		if(list != undefined) {
			listItems = list.getElementsByTagName("LI");
			for(var j=0;j<listItems.length;j++){
				listItems[j].firstChild.style.backgroundImage = 'url(' + icons[iconId] + ')';
				iconId = (iconId >= icons.length-1)?1:iconId+1;
			}
		}
	}
}



/* Accessibility functions */

function jsnSetFontSize(targetId, fontSize)
{
	var targetObj = (document.getElementById) ? document.getElementById(targetId) : document.all(targetId);
	targetObj.style.fontSize = fontSize + '%';
	
	//alert (document.body.style.fontSize);
}
