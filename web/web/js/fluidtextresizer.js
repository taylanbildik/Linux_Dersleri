/*Fluid Text Resizer (June 27th, 2010)
* This notice must stay intact for usage 
* Author: Dynamic Drive at http://www.dynamicdrive.com/
* Visit http://www.dynamicdrive.com/ for full source code
*/

jQuery.noConflict()

function fluidtextresizer(setting){
	fluidtextresizer.count=(fluidtextresizer.count)? ++fluidtextresizer.count : 1
	this.cookiename="fluidtextsizer"+fluidtextresizer.count //name of cookie to use to store persistence for this text resizer instance
	this.setting=setting
	this.selectors=[] //array translating setting.targets into array of jquery selectors
	this.$controls=null
	this.defaultfontsizes=[]
	this.curfontlevel=0
	var thisobj=this
	jQuery(function($){ //on document.ready
		var els=setting.targets
		for (var i=0; i<els.length; i++){
			if ($(els[i]).length==0){ //if selector doesn't yield any matched elements
				els.splice(i, 1) //delete it from setting.targets[]
				i-=1
				continue
			}
			var curfontsize=$(els[i]).css('fontSize')
			thisobj.defaultfontsizes.push({val:parseFloat(curfontsize), unit:curfontsize.slice(-2)}) //remember default font sizes of target elements
			thisobj.selectors.push($(els[i])) //cache selector
		}
		if (setting.controlsdiv){ //if special container for resize controls defined
			thisobj.$controls=$('#'+setting.controlsdiv).find('a[href^=#fontsize], a[href=#bigger], a[href=#smaller]')
			thisobj.$controls.each(function(){
				var $target=$(this)
				$target.data('level', $target.attr('href').replace(/(#)|(fontsize)/ig, '')) //remove "#" and "fontsize" from href to derive level
				$target.click(function(){
				thisobj.setFontLevel($target.data('level'))
				return false
				})
			})
		}
		if (setting.persisttype!="none"){
			var curfontlevel=fluidtextresizer.routines.getCookie(thisobj.cookiename) || 0 //get persisted font level, or 0 to indicate no change in font size
			curfontlevel=parseInt(curfontlevel)
			if (curfontlevel>=-setting.levels && curfontlevel<=setting.levels){ //if font level within range
				thisobj.setFontLevel(curfontlevel, true)
			}
		}
	})
}

fluidtextresizer.prototype={

	setFontLevel:function(level, disableanim){
		var s=this.setting
		var $els=this.selectors
		var level=(level=="bigger")? this.curfontlevel+1 : (level=="smaller")? this.curfontlevel-1 : parseInt(level) //calculate new font size level
		if (s.controlsdiv){ //if special container for resize controls defined
			this.$controls.filter('.selectedcontrol').removeClass('selectedcontrol').end()  //deselect previously selected control
				.filter('[href=#fontsize'+level+']').addClass('selectedcontrol') //apply "selectedcontrol" CSS class to corresponding control
		}
		if (level<-s.levels || level>s.levels || level==this.curfontlevel) //if target level is out or range (range is int from -s.levels to +s.levels) or is current level already
			return
		for (var i=0; i<$els.length; i++){
			var abslevel=Math.abs(level)
			var valchange=Math.pow(1.2, abslevel) //calculate fontlevel^1.2
			//calculate new font size, which is default font size multiply or divided by valchange:
			var newfontsize=this.defaultfontsizes[i].val * (level<0? 1/valchange : level>0? valchange : 1) + this.defaultfontsizes[i].unit
			$els[i].animate({fontSize: newfontsize}, disableanim? 0 : this.setting.animate)
		}
		if (s.persist=="session"){
			fluidtextresizer.routines.setCookie(this.cookiename, level)
		}
		this.curfontlevel=level
	}

}

fluidtextresizer.routines={
	getCookie:function(Name){ 
		var re=new RegExp(Name+"=[^;]*", "i"); //construct RE to search for target name/value pair
		return (document.cookie.match(re))? document.cookie.match(re)[0].split("=")[1] : null //return cookie value if found or null
	},
	
	setCookie:function(name, value, days){
		var expirestr=''
		if (typeof days!="undefined") //if set persistent cookie
			expirestr="; expires="+expireDate.setDate(new Date().getDate()+days).toGMTString()
		document.cookie = name+"="+value+"; path=/"+expirestr
	}
}