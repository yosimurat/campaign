<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="${f:url('/css/global.css')}"/>
</head>
<body>

<html:errors/>

<table class="tablebg">
	<tr>
		<td> code1 </td>
		<td>
			${f:h(code1)}
		</td>
	</tr>
	<tr>
		<td> code2 </td>
		<td>
			${f:h(code2)}
		</td>
	</tr>
	<tr>
		<td> value </td>
		<td>
			${f:h(value)}
		</td>
	</tr>
	<tr>
		<td> label </td>
		<td>
			${f:h(label)}
		</td>
	</tr>
	<tr>
		<td> sortKey </td>
		<td>
			${f:h(sortKey)}
		</td>
	</tr>
	<tr>
		<td> note </td>
		<td>
			${f:h(note)}
		</td>
	</tr>
	<tr>
		<td> createDate </td>
		<td>
			${f:h(createDate)}
		</td>
	</tr>
	<tr>
		<td> createUser </td>
		<td>
			${f:h(createUser)}
		</td>
	</tr>
	<tr>
		<td> modifyDate </td>
		<td>
			${f:h(modifyDate)}
		</td>
	</tr>
	<tr>
		<td> modifyUser </td>
		<td>
			${f:h(modifyUser)}
		</td>
	</tr>

</table>

<s:link href="edit/${code1}/${code2}"> edit </s:link>


<br/><br/>
<s:link href="/general/">list page</s:link>
</body>
</html>