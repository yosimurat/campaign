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

	<th>goodsCode</th>
	<th>lastName</th>
	<th>firstName</th>
	<th>lastNameKana</th>
	<th>firstNameKana</th>
	<th>zipCode</th>
	<th>prefectureCode</th>
	<th>address1</th>
	<th>address2</th>
	<th>ageType</th>
	<th>sexType</th>
	<th>tel1</th>
	<th>tel2</th>
	<th>tel3</th>
	<th>email</th>
	<th>emailContactFlag</th>
	<th>createDate</th>
	<th>createUser</th>
	<th>modifyDate</th>
	<th>modifyUser</th>
<th></th><th></th><th></th>
</tr>

<c:forEach var="e" varStatus="s" items="${campaignEntryItems}">
	<tr style="background-color:${s.index %2 == 0 ? 'white' : 'aqua'}">
		<td>
			${f:h(e.goodsCode)}
		</td>
		<td>
			${f:h(e.lastName)}
		</td>
		<td>
			${f:h(e.firstName)}
		</td>
		<td>
			${f:h(e.lastNameKana)}
		</td>
		<td>
			${f:h(e.firstNameKana)}
		</td>
		<td>
			${f:h(e.zipCode)}
		</td>
		<td>
			${f:h(e.prefectureCode)}
		</td>
		<td>
			${f:h(e.address1)}
		</td>
		<td>
			${f:h(e.address2)}
		</td>
		<td>
			${f:h(e.ageType)}
		</td>
		<td>
			${f:h(e.sexType)}
		</td>
		<td>
			${f:h(e.tel1)}
		</td>
		<td>
			${f:h(e.tel2)}
		</td>
		<td>
			${f:h(e.tel3)}
		</td>
		<td>
			${f:h(e.email)}
		</td>
		<td>
			${f:h(e.emailContactFlag)}
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
		<td><s:link href="show/${e.seq}"> show </s:link></td>
		<td><s:link href="edit/${e.seq}"> edit </s:link></td>
		<td><s:link onclick="return confirm('delete OK?');" href="delete/${e.seq}">delete</s:link></td>
	</tr>
</c:forEach>

</table>

<s:link href="create"> create new Object </s:link>
</body>
</html>