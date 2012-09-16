$(function() {
		var windowloc = window.location.href;
		var hashArray = windowloc.split("#");
		var ok = hashArray.shift();
		var tabNum = undefined;
		//console.log("hashArray[0] is: " + hashArray[0]);
		if (hashArray[0] != undefined && hashArray[0] != null) {
			//do something here?
			jQuery(".tabs-container").each(function(i) {
				if ($(this).attr("id") == hashArray[0]) {
					//jQuery("#container-4").tabs("select",i);
					tabNum = i;
					return true;
				}
			});
			//jQuery("#" + hashArray[0]).
		} else {
			tabNum = 0;
		}
		$('#container-1').tabs();
		$('#container-2').tabs(2);
		$('#container-3').tabs({ fxSlide: true });
		$('#container-4').tabs({ fxFade: true, fxSpeed: 'fast',selected: tabNum});
		//When we start using the new version of jQuery UI, we'll need to change all 
		//of these calls to the updated syntax like this:
		//$("#container-4").tabs({ fx:{opacity:'toggle',duration:'fast'},selected:tabNum });
		
		$('#container-5').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'normal' });
		$('#container-6').tabs({
				fxFade: true,
				fxSpeed: 'fast',
				onClick: function() {
						alert('onClick');
				},
				onHide: function() {
						alert('onHide');
				},
				onShow: function() {
						alert('onShow');
				}
		});
		$('#container-7').tabs({ fxAutoHeight: true });
		$('#container-8').tabs({ fxShow: { height: 'show', opacity: 'show' }, fxSpeed: 'normal' });
		$('#container-9').tabs({ remote: true });
		$('#container-10').tabs();
		$('#container-11').tabs({ disabled: [3] });

		$('<p><a href="#">Disable third tab<\/a><\/p>').prependTo('#fragment-28').find('a').click(function() {
				$(this).parents('div').eq(1).disableTab(3);
				return false;
		});
		$('<p><a href="#">Activate third tab<\/a><\/p>').prependTo('#fragment-28').find('a').click(function() {
				$(this).parents('div').eq(1).triggerTab(3);
				return false;
		});
		$('<p><a href="#">Enable third tab<\/a><\/p>').prependTo('#fragment-28').find('a').click(function() {
				$(this).parents('div').eq(1).enableTab(3);
				return false;
		});

			

});