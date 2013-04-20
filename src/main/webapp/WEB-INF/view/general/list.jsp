<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="${f:url('/css/global.css')}"/>
</head>
<body>

<html:errors/>


<table border="1">
<tr style="background-color:pink">

	<th>code1</th>
	<th>code2</th>
	<th>value</th>
	<th>label</th>
	<th>sortKey</th>
	<th>note</th>
	<th>createDate</th>
	<th>createUser</th>
	<th>modifyDate</th>
	<th>modifyUser</th>
<th></th><th></th><th></th>
</tr>

<c:forEach var="e" varStatus="s" items="${generalItems}">
	<tr style="background-color:${s.index %2 == 0 ? 'white' : 'aqua'}">
		<td>
			${f:h(e.code1)}
		</td>
		<td>
			${f:h(e.code2)}
		</td>
		<td>
			${f:h(e.value)}
		</td>
		<td>
			${f:h(e.label)}
		</td>
		<td>
			${f:h(e.sortKey)}
		</td>
		<td>
			${f:h(e.note)}
		</td>
		<td>
			${f:h(e.createDate)}
		</td>
		<td>
			${f:h(e.createUser)}
		</td>
		<td>
			${f:h(e.modifyDate)}
		</td>
		<td>
			${f:h(e.modifyUser)}
		</td>
		<td><s:link href="show/${e.code1}/${e.code2}"> show </s:link></td>
		<td><s:link href="edit/${e.code1}/${e.code2}"> edit </s:link></td>
		<td><s:link onclick="return confirm('delete OK?');" href="delete/${e.code1}/${e.code2}">delete</s:link></td>
	</tr>
</c:forEach>

</table>

<s:link href="create"> create new Object </s:link>
</body>
</html>