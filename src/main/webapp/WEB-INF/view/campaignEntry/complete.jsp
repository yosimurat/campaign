<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="${f:url('/css/bootstrap.min.css')}" />
<link rel="stylesheet" type="text/css"
	href="${f:url('/css/global.css')}" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="${f:url('/js/bootstrap.min.js')}"></script>
</head>
<body>
	<div class="container">
		<div id="header">ヘッダー</div>


		<br /> <br />
		<p><bean:message key="info.create" /></p>
		<br /> <br />
		<s:link href="/campaignEntry/">list page</s:link>

		<div id="header">フッター</div>

	</div>
</body>
</html>