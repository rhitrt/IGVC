$(document).ready(function(){
    $("#products").hide();
    $("#featured-product").append("<img src='https://my.garmin.com/static/m/ajax-loader.gif' />");
    var pageURL = encodeURIComponent(document.location.href);
    //var pageURL = encodeURIComponent("https://buy.garmin.com/shop/shop.do?cID=145&pID=75226");
    var locRegex = new RegExp("GarminLocalePref=(.*?);"); 
    var pageLocale = locRegex.exec(document.cookie)[1]; 
    if (typeof pageLocale == 'undefined') {
        pageLocale = "en_US";
    }
    //console.log("what locale? ", pageLocale);
    //console.log("here we are in ready!");
    $.ajax({
        url:"https://" + gemsserver + "/componentServices/recommendations?source="+ pageURL+ "&l=" + pageLocale + "&count=4",
        jsonpCallback:"json847584259169",
        dataType:"jsonp",
        cache:true,
        success:showProducts,
        error:showError
    });
    $(".submit").live("click",function(e) {
        e.preventDefault();
        $(this).parents("form").submit();
        //console.log("my parent form: ",$(this).parents("form"));
    });
});
function showError (xhrobj,status, error) {
    //console.log("error! ",status,error);
}
function showProducts(data,status,xhrobj) {
    //console.log("status: ", status);

    var template = _.template($("#product-template").html());

    $(".product-sidebar").append(template({recommendations:data.recommendations})).show();
    
    $(".recommended-products").show();
    $(".container").append("<!-- <div class='debug-info'>" + data.debugInfo + "</div> -->");
}