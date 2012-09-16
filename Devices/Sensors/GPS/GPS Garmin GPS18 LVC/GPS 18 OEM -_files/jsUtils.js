var submitted = false;
function onSubmit() {

	if (submitted) {
		alert("Your request is being processed...");
		return false;
	} else {
		submitted = true;
		return true;
	}
}

function delete_cookie (name, path)
{
        // Build expiration date string:
        var expiration_date = new Date ();
        expiration_date . setYear (expiration_date . getYear () - 1);
        expiration_date = expiration_date . toGMTString ();

        // Build set-cookie string:
        var cookie_string = escape (name) + "=; expires=" + expiration_date;
        if (path != null)
                cookie_string += "; path=" + path;

        // Delete the cookie:
        document.cookie = cookie_string;
}

/**
 * Sets a cookie.
 * 
 * @param name name of the cookie
 * @param value value of the cookie
 * @param expires the number of MINUTES until the cookie expires (optional)
 * @param path path (optional)
 * @param domain cookie's domain (optional)
 * @param secure should the cookie be secure (optional, default false)
 * @return nothing
 */
function Set_Cookie( name, value, expires, path, domain, secure ) {
	// set time, it's in milliseconds
	var today = new Date();
	today.setTime( today.getTime() );
	
	if ( expires ) {
	   expires = expires * 1000 * 60;
	}
	var expires_date = new Date( today.getTime() + (expires) );
	
	document.cookie = name + "=" +escape( value ) +
	( ( expires ) ? ";expires=" + expires_date.toGMTString() : "" ) + 
	( ( path ) ? ";path=" + path : "" ) + 
	( ( domain ) ? ";domain=" + domain : "" ) +
	( ( secure ) ? ";secure" : "" );
}

function Get_Cookie( check_name ) {
	// first we'll split this cookie up into name/value pairs
	// note: document.cookie only returns name=value, not the other components
	var a_all_cookies = document.cookie.split( ';' );
	var a_temp_cookie = '';
	var cookie_name = '';
	var cookie_value = '';
	var b_cookie_found = false; // set boolean t/f default f
	
	for ( i = 0; i < a_all_cookies.length; i++ ) {
		// now we'll split apart each name=value pair
		a_temp_cookie = a_all_cookies[i].split( '=' );
		
		// and trim left/right whitespace while we're at it
		cookie_name = a_temp_cookie[0].replace(/^\s+|\s+$/g, '');
	
		// if the extracted name matches passed check_name
		if ( cookie_name == check_name ) {
			b_cookie_found = true;
			// we need to handle case where cookie has no value but exists (no = sign, that is):
			if ( a_temp_cookie.length > 1 )	{
				cookie_value = unescape( a_temp_cookie[1].replace(/^\s+|\s+$/g, '') );
			}
			// note that in cases where cookie is initialized but no value, null is returned
			return cookie_value;
			break;
		}
		a_temp_cookie = null;
		cookie_name = '';
	}
	if ( !b_cookie_found ) {
		return null;
	}
}

// DEPRECATED -- use dialogUtils.js showDialogAndButtons() instead
function showDialog(id,closeWindowButtonText){
	//jQuery("#"+id).wrap("<div class='outerDialog'></div>");
	jQuery("#"+id).show().dialog("open");
	//console.log("this is the button? " + jQuery("#"+id+" .button"));
	jQuery("#"+id+" .button").bind("click",{"id":id},closeDialog);
	//var btn = "<p><a class=\"button\" href=\"#\" onclick=\"jQuery('#"+id+"').dialog('close');return false;\"><span>"+closeWindowButtonText+"</span></a></p>";
	//jQuery(".ui-dialog-buttonpane").html(btn).show();
}

// DEPRECATED -- use dialogUtils.js closeDialogById() instead
function closeDialog(e){
	var id = e.data.id;
	//console.log("this is the id I'm looking for: " + id);
	jQuery("#"+id).dialog('close');
	e.preventDefault();
	return false;
}

function openTermsWindow() {
	var newwindow = window.open('/mygarmin/i/agreement.faces','Terms','height=600,width=800,left=300,top=100,scrollbars=1');
	newwindow.focus();
	return false;
}

function openSerialWindow() {
	var newwindow = window.open('/mygarmin/howToFindSerialNumber.htm','serialNumber','height=400,width=800,left=200,top=100');
	newwindow.focus();
	return false;
}

function openUnitIDWindow() {
	var newwindow=window.open('/mygarmin/howToFindUnitID.htm','UnitID','height=400,width=800,left=200,top=100');
	newwindow.focus();
	return false;
}