<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="${f:url('/css/global.css')}"/>
</head>
<body>

<html:errors/>

<s:form>

<table class="tablebg">
	<tr>
		<td> code1 </td>
		<td>
			<html:text property="code1" />
		</td>
	</tr>
	<tr>
		<td> code2 </td>
		<td>
			<html:text property="code2" />
		</td>
	</tr>
	<tr>
		<td> value </td>
		<td>
			<html:text property="value" />
		</td>
	</tr>
	<tr>
		<td> label </td>
		<td>
			<html:text property="label" />
		</td>
	</tr>
	<tr>
		<td> sortKey </td>
		<td>
			<html:text property="sortKey" />
		</td>
	</tr>
	<tr>
		<td> note </td>
		<td>
			<html:text property="note" />
		</td>
	</tr>
	<tr>
		<td> createDate </td>
		<td>
			<html:text property="createDate" />
		</td>
	</tr>
	<tr>
		<td> createUser </td>
		<td>
			<html:text property="createUser" />
		</td>
	</tr>
	<tr>
		<td> modifyDate </td>
		<td>
			<html:text property="modifyDate" />
		</td>
	</tr>
	<tr>
		<td> modifyUser </td>
		<td>
			<html:text property="modifyUser" />
		</td>
	</tr>

</table>

<input type="submit" name="insert" value="CREATE" />
</s:form>
<br/><br/>

<s:link href="/general/">list page</s:link>

</body>
</html>