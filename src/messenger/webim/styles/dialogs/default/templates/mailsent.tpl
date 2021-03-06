<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>${msg:chat.window.title.user}</title>
	<link rel="shortcut icon" href="${webimroot}/images/favicon.ico" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="${tplroot}/chat.css" />
</head>
<body>
	<div id="top2">
		<div id="logo">
			${if:company.chatLogoURL}
				${if:webimHost}
					<a onclick="window.open('${page:webimHost}');return false;" href="${page:webimHost}">
						<img src="${page:company.chatLogoURL}" alt=""/>
					</a>
				${else:webimHost}
					<img src="${page:company.chatLogoURL}" alt=""/>
				${endif:webimHost}
			${else:company.chatLogoURL}
				${if:webimHost}
					<a onclick="window.open('${page:webimHost}');return false;" href="${page:webimHost}">
						<img src="${tplroot}/images/default-logo.gif" alt=""/>
					</a>
				${else:webimHost}
					<img src="${tplroot}/images/default-logo.gif" alt=""/>
				${endif:webimHost}
			${endif:company.chatLogoURL}
			&nbsp;
			<div id="page-title">${msg:chat.mailthread.sent.title}</div>
			<div class="clear">&nbsp;</div>
		</div>
	</div>
	<div id="headers">
		<div class="wndb"><div class="wndl"><div class="wndr"><div class="wndt"><div class="wndtl"><div class="wndtr"><div class="wndbl"><div class="wndbr">
			<div class="buttons">
				<a href="javascript:window.close();" title="${msg:chat.mailthread.sent.close}"><img class="tpl-image iclosewin" src="${webimroot}/images/free.gif" alt="${msg:chat.mailthread.sent.close}" /></a>
			</div>
			<div class="messagetxt">${msg:chat.mailthread.sent.content,email}</div>
		</div></div></div></div></div></div></div></div>
	</div>
	<div id="content-wrapper">
		&nbsp;
	</div>
</body>
</html>