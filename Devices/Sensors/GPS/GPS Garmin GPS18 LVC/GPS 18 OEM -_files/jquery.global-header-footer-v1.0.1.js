function garminGlobalHeaderFooter() {
  var myoptions = {
      "interval": 200, //looks for mouse changes every .1 sec.
      "sensitivity": 2, //mouse has to stay put within 2 pixels during interval to trigger
      "timeout": 340, //0.34 sec delay
      "over":garminGlobalHeaderFooterShowDropdown,
      "out":garminGlobalHeaderFooterKillDropdown
    };
    jQuery("#global-nav-primary-tier li.has-menu").hoverIntent(myoptions);
    //jQuery("#global-header h2 a").mouseover(garminGlobalHeaderFooterKillFast);
}
function garminGlobalHeaderFooterShowDropdown () {
  jQuery(this).addClass("active-navigation").find(".dd-arrow, .dropdown").addClass("active-navigation");
}
function garminGlobalHeaderFooterKillDropdown () {
  jQuery(this).removeClass("active-navigation").find(".dd-arrow, .dropdown").removeClass("active-navigation");
}
function garminGlobalHeaderFooterKillFast (e) {
  jQuery(".has-menu, .dd-arrow, .dropdown").removeClass("active-navigation");
}

jQuery(document).ready(function(){
  setupHeader();
});
function setupHeader() {
  //jQuery.noConflict();
  var b = jQuery.browser;
  if (b.msie == true) {
    jQuery('html').addClass('ie' + Math.floor(Number(b.version)));
  }
	garminGlobalHeaderFooter();	
}


