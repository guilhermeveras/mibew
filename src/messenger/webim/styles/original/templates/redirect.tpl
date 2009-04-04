<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>${msg:chat.window.title.agent}</title>
<link rel="shortcut icon" href="${webimroot}/images/favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" type="text/css" href="${tplroot}/chat.css" />
</head>
<style>
.tplimage {
	background: transparent url(${tplroot}/images/wmfrm.png) no-repeat scroll 0px 0px;
	-moz-background-clip: -moz-initial; 
	-moz-background-origin: -moz-initial; 
	-moz-background-inline-policy: -moz-initial;
}
.icrnlb { background-position:-40px -15px; width: 15px; height: 15px; }
.icrnlt { background-position:-40px 0px; width: 15px; height: 15px; }
.icrnrb { background-position:-55px -15px; width: 15px; height: 15px; }
.icrnrt { background-position:-55px 0px; width: 15px; height: 15px; }
.iback { background-position:-41px -30px; width: 25px; height: 26px; }
</style>
<body bgcolor="#FFFFFF" background="${tplroot}/images/bg.gif" text="#000000" link="#C28400" vlink="#C28400" alink="#C28400" marginwidth="0" marginheight="0" leftmargin="0" rightmargin="0" topmargin="0" bottommargin="0">
<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
<td valign="top">


<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
<td height="90"></td>
<td>
	<table width="100%" cellspacing="0" cellpadding="0" border="0">
	<tr>
    <td width="50%" height="90" class="window"><h1>${msg:chat.redirect.title}</h1></td>
	<td width="50%" align="right" valign="bottom" class="window">
		<h2>${msg:chat.redirect.choose}</h2>
		<img src='${webimroot}/images/free.gif' width="1" height="5" border="0" alt="" /><br>
	</td>
	</tr>
	</table>
</td>
<td></td>
</tr>

<tr>
<td height="100%"></td>
<td>

	<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
	<tr>
    <td width="15"><img class="tplimage icrnlt" src="${webimroot}/images/free.gif" border="0" alt=""/></td>
	<td width="100%" background="${tplroot}/images/winbg.gif" class="bgcy"><img src='${webimroot}/images/free.gif' width="1" height="1" border="0" alt="" /></td>
    <td width="15"><img class="tplimage icrnrt" src="${webimroot}/images/free.gif" border="0" alt=""/></td>
	</tr>

	<tr>
    <td height="100%" bgcolor="#FED840"><img src='${webimroot}/images/free.gif' width="1" height="1" border="0" alt="" /></td>
	<td background="${tplroot}/images/winbg.gif" class="bgcy">

		<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
		<tr>
	    <td width="100%" valign="top" class="window">
	    
			<table width="100%" cellpadding="0">
			<tr>
	    	<td width="50%" valign="top">
${if:redirectToAgent}
	    	${msg:chat.redirect.operator}<br/>
	    	<ul class="agentlist">
		    	${page:redirectToAgent}
	    	</ul>
${endif:redirectToAgent}
	    	</td>
	    	<td width="50%" valign="top">
${if:redirectToGroup}
	    	${msg:chat.redirect.group}<br/>
	    	<ul class="agentlist">
		    	${page:redirectToGroup}
	    	</ul>
${endif:redirectToGroup}
	    	</td>
	    	</tr></table>

		</td>
		</tr>
		</table>

	</td>
    <td bgcolor="#E8A400"><img src='${webimroot}/images/free.gif' width="1" height="1" border="0" alt="" /></td>
	</tr>

	<tr>
    <td><img class="tplimage icrnlb" src="${webimroot}/images/free.gif" border="0" alt=""/></td>
	<td background="${tplroot}/images/winbg.gif" class="bgcy"><img src='${webimroot}/images/free.gif' width="1" height="1" border="0" alt="" /></td>
    <td><img class="tplimage icrnrb" src="${webimroot}/images/free.gif" border="0" alt=""/></td>
	</tr>
	</table>

</td>
<td></td>
</tr>

<tr>
<td height="90"></td>
<td>

	<table width="100%" cellspacing="0" cellpadding="0" border="0">
	<tr>
    <td width="50%" align="left">
		${pagination}
	</td>
    <td width="50%" align="right">
		<table cellspacing="0" cellpadding="0" border="0">
		<tr>
	    <td><a href="javascript:window.back();" title="${msg:chat.redirect.back}"><img class="tplimage iback" src="${webimroot}/images/free.gif" border="0" alt=""/></a></td>
	    <td width="5"></td>
	    <td class="button"><a href="javascript:window.back();" title="${msg:chat.redirect.back}">${msg:chat.redirect.back}</a></td>
		</tr>
		</table>
	</td>
	</tr>
	</table>

</td>
<td></td>
</tr>

<tr>
<td width="30"><img src='${webimroot}/images/free.gif' width="30" height="1" border="0" alt="" /></td>
<td width="100%"><img src='${webimroot}/images/free.gif' width="540" height="1" border="0" alt="" /></td>
<td width="30"><img src='${webimroot}/images/free.gif' width="30" height="1" border="0" alt="" /></td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>

