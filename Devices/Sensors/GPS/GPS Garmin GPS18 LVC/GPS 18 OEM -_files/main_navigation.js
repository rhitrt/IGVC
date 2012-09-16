//document.body.style = "background: none;";
//document.getElementsByTagName("body")[0].style = "background: none;";
if (navCountry == 'us') {
    document.body.className = "shop-us";
    document.body.style.background = "none";
    //jQuery("body").attr({"style":"background: none !important;","class":"shop-us"});
}   

var checkJqLoad;
var navLoaded = false;
function checkLoadFunc() {
    //console.log("checkLoadFunc here, what is readyState? ", document.readyState);
    if (document.readyState === "complete") {
        if (typeof(jQuery) == 'undefined') {
            clearInterval(checkJqLoad);
            var head = document.getElementsByTagName('head')[0];
            var myscript = document.createElement('script');
            myscript.type = 'text/javascript';
            myscript.onload = checkHover;
            myscript.onreadystatechange = function() {
                //console.log("checkLoadFunc readystate changed!",myscript.readyState);
                if (myscript.readyState === "loaded" || myscript.readyState === "complete"){
                    myscript.onreadystatechange = null;
                    checkHover();
                }
            }
            myscript.src= 'https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js';
            head.appendChild(myscript);
        } else {
            checkHover();
        }
    }
}
function checkHover() {
    if (typeof jQuery().hoverIntent == 'undefined') {
        var head = document.getElementsByTagName('head')[0];
        var hovscript = document.createElement('script');
        hovscript.type = 'text/javascript';
        hovscript.onload = loadMenu;
        hovscript.onreadystatechange = function() {
            //console.log("checkHover readystate changed!",document.readyState,this,this.readyState,hovscript);
            if (hovscript.readyState === "loaded" || hovscript.readyState === "complete"){
                hovscript.onreadystatechange = null;
                loadMenu();
            }
        }
        hovscript.src= 'https://static.garmincdn.com/com.garmin/ui/src-js/jquery.hoverIntent.minified.js';
        head.appendChild(hovscript);
        clearInterval(checkJqLoad);
    } else {
        loadMenu();
    }
}

function loadMenu() {

    clearInterval(checkJqLoad);
    //this sets up the hover for the old menus.
    //console.log("loadMenu here, eh!", document.readyState);
    jQuery(".suckerfish li").live("mouseover",function(){
        jQuery(this).addClass("sfhover");
    }).live("mouseout",function(){
        jQuery(this).removeClass("sfhover");
    });
    if (typeof navCountry == 'undefined') {
        navCountry = 'us';
    }
    var whaturl = "https://www.garmin.com/us/embeds/main_navigation_json";

    jQuery.ajax({
        url:whaturl,
        data:{'country':navCountry},
        dataType:"jsonp",
        jsonpCallback:'jsonp64578956451312',
        cache:true,
        //jsonp:"jsonp64578956451312",
        success:function(data) {
            if (navLoaded == false) {
               mainNavigationSuccess(data);
            }
        },
        error: function(obj,status) {
            //console.log("ajax error!!! ",obj,status);
        }
    });
}
function jsonp64578956451312(data) {
    //console.log("inside the json callback, baby!!", data);
    if (navLoaded == false) {
       mainNavigationSuccess(data);
    }
}
function mainNavigationSuccess(data) {
    navLoaded = true;
    jQuery("#nav-container").html(data.html).show();
}
//if jQuery is loaded, start loading the nav
//if not, put jquery into the head of the page
if (typeof(jQuery) == 'undefined') {
    if (typeof checkJqLoad == 'undefined') {
        checkJqLoad = setInterval(checkLoadFunc,10);
    }
} else {
    checkHover();
}