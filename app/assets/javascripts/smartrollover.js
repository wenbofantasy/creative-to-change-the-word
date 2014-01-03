var now=1;
var old=1;

var footer=1;
var picSetNum,footerNum;
function smartRollover() {
	if(document.getElementsByTagName) {
		var images = document.getElementsByTagName("img");
		for(var i=0; i < images.length; i++) {
			if(images[i].getAttribute("src").match("_off."))
			{
				images[i].onmouseover = function() {
					if(this.id){
						clearInterval(picSetNum);
						bannerEff(this,true,this.id.split("_")[1]);
					}else{
						this.setAttribute("src", this.getAttribute("src").replace("_off.", "_on."));
					}
				}
				images[i].onmouseout = function() {
					if(this.id){
						picSetNum=setInterval(picSpeed,5000);
						bannerEff(this,false,this.id.split("_")[1]);
					}else{
						this.setAttribute("src", this.getAttribute("src").replace("_on.", "_off."));
					}
				}
			}
		}
	}
}
//============================banner效果================================
picSetNum=setInterval(picSpeed,4000);
function picSpeed(){
	old++;
	if(old>4){
		old=1;
	}
	styleEff(old);
}

var color=["#ffce55","#ecf1ed","#ffffff","#ffffff"];
function bannerEff(mc,isOver,id){
	if(isOver){
		mc.setAttribute("src", mc.getAttribute("src").replace("_off.", "_on."));
	}else{
		mc.setAttribute("src", mc.getAttribute("src").replace("_on.", "_off."));
	}
	if(id!=now){
		styleEff(id);
	}
	old=now;
	
}
function styleEff(id){
	//document.getElementById("in_banner").style.background=color[id-1];
	$("#in_banner").animate({backgroundColor:color[id-1]},1000);
	document.getElementById("img_"+id).style.display="block";
	$("#img_"+now).animate({opacity:0},1000);
	$("#img_"+id).animate({opacity:1},1000);
	now=id;
}
//=========================底部效果=======================================
footerNum=setInterval(footerSpeed,4000);
function footerSpeed(){
	footer++;
	if(footer>3){
		footer=1;
	}
	if(footer==1){
		$("#footer_ti_3").animate({marginTop:-155},500,endEff);
		$("#footer_ti_1").animate({marginTop:0},500);
		$("#footer_ti_2").animate({marginTop:155},500);
	}
	if(footer==2){
		$("#footer_ti_1").animate({marginTop:-155},500,endEff);
		$("#footer_ti_2").animate({marginTop:0},500);
		$("#footer_ti_3").animate({marginTop:155},500);
	}
	if(footer==3){
		$("#footer_ti_2").animate({marginTop:-155},500,endEff);
		$("#footer_ti_3").animate({marginTop:0},500);
		$("#footer_ti_1").animate({marginTop:155},500);
	}
}
function endEff(){
	if(footer==1){
		document.getElementById("footer_ti_3").style.marginTop="310px";
	}
	if(footer==2){
		document.getElementById("footer_ti_1").style.marginTop="310px";
	}
	if(footer==3){
		document.getElementById("footer_ti_2").style.marginTop="310px";
	}
	
}
//=======================================================================

if(window.addEventListener) {
	window.addEventListener("load", smartRollover, false);
}
else if(window.attachEvent) {
	window.attachEvent("onload", smartRollover);
}
 startWindowSize();