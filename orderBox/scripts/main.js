function init() {
	//alert(getWindowHeight());
	resizePage();
}

function resizePage() {
/*
	hWindow = getWindowHeight();
	hHead = 100;
	hMenu = 50;
	hFoot = 50;
	setHeight(getDiv("cont"), hWindow - hHead - hMenu - hFoot - 22);
*/
	
	w = window.innerWidth;
	h = window.innerHeight;
	//getDiv("wk").innerHTML = w + "px * " + h + "px";
	
	if (w > h) {
		//getDiv("top").style.width = "54%";
	} else {
		//getDiv("top").style.width = "100%";
	}
}

function getWindowHeight() {
	return window.innerHeight;
}

function getDiv(name) {
	return document.getElementById(name);
}

function setHeight(div, h) {
	div.style.height = h + 'px';
}

window.onorientationchange = function() {
	resizePage();
}

window.onresize = function() {
	resizePage();
}

function show(div) {
	//var div = getDiv(name);
	div.style.display = "";
}

function hide(div) {
	//var div = getDiv(name);
	div.style.display = "none";
}

function change_display(name) {
	var obj = getDiv(name);
	//alert(obj.style.display);
	if(obj.style.display == "none") {
		show(obj);
	} else {
		hide(obj);
	}
}

