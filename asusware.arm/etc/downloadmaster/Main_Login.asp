<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns:v>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<link rel="shortcut icon" href="images/favicon.png">
<link rel="icon" href="images/favicon.png">
<title>ASUS Login</title>
<style>
body{
font-family: Arial, MS UI Gothic, MS P Gothic, sans-serif;
}
.content{
width:580px;
height:526px;
margin: 20px auto 40px auto;
background:rgba(40,52,55,0.1);
}
.wrapper{
background:url(images/New_ui/login_bg.png) #283437 no-repeat;
background-size: 1280px 1076px;
background-position: center 0%;
margin: 0px;
background:#283437\9;
}
.title_name {
font-size: 40pt;
color:#93d2d9;
}
.prod_madelName{
font-size: 26pt;
color:#fff;
margin:20px 0px 0px 78px;
}
.app_name {
font-size: 30pt;
color:#93d2d9;
margin-left:78px;
}
.login_img{
width:43px;
height:43px;
background-image: url('images/New_ui/icon_titleName.png');
background-repeat: no-repeat;
}
.p1{
font-size: 16pt;
color:#fff;
width:480px;margin-left:78px;
margin-top:10px
}
.button{
background:rgba(255,255,255,0.1);
border: solid 1px #6e8385;
border-radius: 4px ;
transition: visibility 0s linear 0.218s,opacity 0.218s,background-color 0.218s;
height: 68px;
width: 320px;
font-size: 28pt;
color:#fff;
color:#000\9; /* IE6 IE7 IE8 */
text-align: center;
float:left;
margin:50px 0px 0px 285px;
line-height:68px;
cursor:pointer;
}
.form_input{
background-color:rgba(255,255,255,0.2);
background-color:#576D73\9;
border-radius: 4px;
padding:23px 22px;
width: 480px;
border: 0;
height:30px;
color:#fff;
font-size:28px;
margin:20px 0px 0px 78px;
}
.nologin{
margin:10px 0px 0px 78px;
background-color:rgba(255,255,255,0.2);
padding:20px;
line-height:36px;
border-radius: 5px;
width: 480px;
border: 0;
color:#FFF;
color:#FFF\9; /* IE6 IE7 IE8 */
font-size:28px;
}
.div_table{
display:table;
}
.div_tr{
display:table-row;
}
.div_td{
display:table-cell;
}
.title_gap{
margin:20px 0px 0px 78px;
}
.img_gap{
padding-right:30px;
vertical-align:middle;
}
.password_gap{
margin:30px 0px 0px 78px;
}
.error_hint{
color: rgb(255, 204, 0);
margin:10px 0px -10px 78px;
font-size: 18px;
}
.error_hint1{
margin:40px 0px -10px 78px;
font-size: 24px;
line-height:32px;
width: 580px;
}
.main_field_gap{
margin:100px auto 0;
}
.warming_desc{
font-size: 16px;
color:#FC0;
width: 600px;
}
/*for mobile device*/
@media screen and (max-width: 1000px){
.title_name {
font-size: 20pt;
color:#93d2d9;
margin-left:15px;
}
.prod_madelName{
font-size: 13pt;
margin-left: 20px;
}
.p1{
font-size: 12pt;
width:100%;
margin-left:20px;
margin-top:20px;
}
.login_img{
background-size: 75%;
}
.app_name {
font-size: 20pt;
color:#93d2d9;
margin-left: 20px;
}
.form_input{
padding:10px 11px;
width: 100%;
height:30px;
font-size:16px;
margin-left: 20px
}
.button{
height: 50px;
width: 100%;
font-size: 14pt;
text-align: center;
float:left;
margin-top: 25px;
line-height:50px;
padding-left: 7px;
margin-left:32px;
}
.nologin{
margin-left:10px;
padding:10px;
line-height:18px;
width: 100%;
font-size:14px;
}
.error_hint{
margin-left:15px;
}
.error_hint1{
width: 100%;
font-size:14px;
}
.main_field_gap{
width:80%;
margin:30px 0 0 15px;
}
.title_gap{
margin-left:15px;
}
.password_gap{
margin-left:15px;
}
.img_gap{
padding-right:0;
vertical-align:middle;
}
.warming_desc{
margin: 10px 15px;
width: 100%;
}
</style>
<script type="text/javascript" src="jquery.js?v=105"></script>
<script type="text/javascript" src="multiLanguage_all.js?v=105"></script>
<script>
var $j = jQuery.noConflict();
var flag_all = location.href.split("flag=")[1];
var flag=flag_all.split("&productname=")[0];
var product_name=location.href.split("productname=")[1].split("&")[0];
var product_id="";
var del_len=flag.length+product_name.length+24;
var directurl=decodeURIComponent(location.search).substring(del_len);
	if(directurl.indexOf("downloadmaster")>0) {
	var url = "downloadmaster/dm_apply.cgi";
	} else if (directurl.indexOf("mediaserverui")>0) {
	var url = "mediaserverui/ms_apply.cgi";
	}
	var action_mode = "initial";
	var type = "General";
	var special_cgi = "get_language"
	url += "?action_mode=" + action_mode + "&download_type=" +type+ "&special_cgi="+special_cgi+"&t=" +Math.random();
	$j.ajax({url: url,
			async: false,
			success: function(data){initial_multi_INT_status(data)},
			error: function(XMLHttpRequest, textStatus, errorThrown){
			if(XMLHttpRequest.status==598){
				if(httpTag)
					self.location = "http://"+ location.host +"/Main_Login.asp";
				else
					self.location = "https://"+ location.host +"/Main_Login.asp";
			}}});
function initial_multi_INT_status(data){
	var array = new Array();
	eval("array="+data);
	refreshTime_data_tmp = data;
	var lang = atob(array[0]);
	product_id = atob(array[1]);
	LAN_IP= array[10];
	LOCAL_DOMAIN= array[29];
	AUTOLOGOUT_MAX_MINUTE_TMP=array[30];
	var disk= array[24];
	if(disk == "tfat" || disk == "vfat") {
		IS_FAT32 = 1;
	}
	if(lang == "EN")
	multi_INT = 0;
	else if(lang == "TW")
	multi_INT = 1;
	else if(lang == "CN")
	multi_INT = 2;
	else if(lang == "RU")
	multi_INT = 3;
	else if(lang == "FR")
	multi_INT = 4;
	else if(lang == "DE")
	multi_INT = 5;
	else if(lang == "BR")
	multi_INT = 6;
	else if(lang == "CZ")
	multi_INT = 7;
	else if(lang == "DA")
	multi_INT = 8;
	else if(lang == "FI")
	multi_INT = 9;
	else if(lang == "MS")
	multi_INT = 10;
	else if(lang == "NO")
	multi_INT = 11;
	else if(lang == "PL")
	multi_INT = 12;
	else if(lang == "SV")
	multi_INT = 13;
	else if(lang == "TH")
	multi_INT = 14;
	else if(lang == "TR")
	multi_INT = 15;
	else if(lang == "JP")
	multi_INT = 16;
	else if(lang == "IT")
	multi_INT = 17;
	else if(lang == "HU")
	multi_INT = 18;
	else if(lang == "RO")
	multi_INT = 19;
	else if(lang == "UK")
	multi_INT = 20;
	else if(lang == "ES")
	multi_INT = 21;
	else
	multi_INT = 0;
	}
function initial(){
	
document.form.login_usern.focus();
	showAPPname();
if(flag != "" && flag != "1"){
document.getElementById("error_status_field").style.display ="";
if(flag == 3)
document.getElementById("error_status_field").innerHTML ="* Invalid username or password";
else if(flag == 7){
document.getElementById("error_status_field").innerHTML ="* Detect abnormal logins many times, please try again after 1 minute.";
document.form.login_usern.disabled = true;
document.form.login_passw.disabled = true;
}
else if(flag == 8){
//logout

document.getElementById("login_filed").style.display ="none";
document.getElementById("logout_field").style.display ="";

}else
document.getElementById("error_status_field").style.display ="none";
}
history.pushState("", document.title, window.location.pathname);
}
function trim(val){
val = val+'';
for (var startIndex=0;startIndex<val.length && val.substring(startIndex,startIndex+1) == ' ';startIndex++);
for (var endIndex=val.length-1; endIndex>startIndex && val.substring(endIndex,endIndex+1) == ' ';endIndex--);
return val.substring(startIndex,endIndex+1);
}
function login(){
if(!window.btoa){
window.btoa = function(input){
var keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
var output = "";
var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
var i = 0;
var utf8_encode = function(string) {
string = string.replace(/\r\n/g,"\n");
var utftext = "";
for (var n = 0; n < string.length; n++) {
var c = string.charCodeAt(n);
if (c < 128) {
utftext += String.fromCharCode(c);
}
else if((c > 127) && (c < 2048)) {
utftext += String.fromCharCode((c >> 6) | 192);
utftext += String.fromCharCode((c & 63) | 128);
}
else {
utftext += String.fromCharCode((c >> 12) | 224);
utftext += String.fromCharCode(((c >> 6) & 63) | 128);
utftext += String.fromCharCode((c & 63) | 128);
}
}
return utftext;
};
input = utf8_encode(input);
while (i < input.length) {
chr1 = input.charCodeAt(i++);
chr2 = input.charCodeAt(i++);
chr3 = input.charCodeAt(i++);
enc1 = chr1 >> 2;
enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
enc4 = chr3 & 63;
if (isNaN(chr2)) {
enc3 = enc4 = 64;
}
else if (isNaN(chr3)) {
enc4 = 64;
}
output = output +
keyStr.charAt(enc1) + keyStr.charAt(enc2) +
keyStr.charAt(enc3) + keyStr.charAt(enc4);
}
return output;
};
}
document.form.login_usern.value = trim(document.form.login_usern.value);
document.form.login_username.value = btoa(document.form.login_usern.value);
document.form.login_passwd.value = btoa(document.form.login_passw.value);
document.form.login_usern.disabled = true;
document.form.login_passw.disabled = true;
//document.form.foilautofill.disabled = true;
document.form.submit();
}
function showAPPname() {
	if(directurl.indexOf("downloadmaster")>0) {
		document.getElementById("app_name").innerHTML ="Download Master";
	} else if (directurl.indexOf("mediaserverui")>0) {
		document.getElementById("app_name").innerHTML ="Media Server";
	}
}
</script>

</head>
<body class="wrapper" onload="initial();">
<iframe name="hidden_frame" id="hidden_frame" width="0" height="0" frameborder="0"></iframe>
<form method="post" name="form" action="/check.asp" >
<input type="hidden" name="flag" value="">
<input type="hidden" name="login_username" value="">
<input type="hidden" name="login_passwd" value="">
<input type="hidden" name="directurl" value="">
<script>
document.getElementsByName("directurl")[0].value=String(encodeURI(directurl));
</script>
<div class="div_table main_field_gap">
<div class="div_tr">
<div class="title_name">
<div class="div_td img_gap">
<div class="login_img"></div>
</div>
<div class="div_td">SIGN IN</div>
</div>
<div class="app_name" id="app_name"></div>

<div class="prod_madelName"><span id="multi_1"></span></div>
<div id="login_filed">
<div class="p1"><span id="multi_sign" >Sign in with your ASUS router account</span></div>
<div>
<input type="text" id="login_usern" name="login_usern" tabindex="1" class="form_input" maxlength="128" value="" autocapitalization="off" autocomplete="off" placeholder="Username">
</div>
<div>
<input type="password" id="login_passw" autocapitalization="off" autocomplete="off" value="" name="login_passw" tabindex="2" class="form_input" maxlength="128" onkeyup="" onpaste="return false;"/ onBlur="" placeholder="Password">
</div>
<div style="display:none;" id="error_status_field" class="formfontdesc"></div>
<div >
<!--<input type="submit" class="button" onclick="login();" value="<#76#>">-->
<input type="submit" id="button_sign" onclick="login();" class="button"  value="Sign in">
</div>
</div>
<div id="logout_field" style="display:none;">
<div class="nologin" align="left"><span id="logout_id"></span></div>
</div>
</div>
</div>
</form>
<script>
$j("#multi_1").html(product_id);
document.getElementById("login_usern").setAttribute("placeholder",multiLanguage_all_array[multi_INT][18]);
document.getElementById("login_passw").setAttribute("placeholder",multiLanguage_all_array[multi_INT][19]);
$j("#multi_sign").html(multiLanguage_all_array[multi_INT][20]);//////////ok
document.getElementById("button_sign").setAttribute("value",multiLanguage_all_array[multi_INT][21]);
$j("#logout_id").html(multiLanguage_all_array[multi_INT][8]);//////ok
</script>
</body>
</html>

