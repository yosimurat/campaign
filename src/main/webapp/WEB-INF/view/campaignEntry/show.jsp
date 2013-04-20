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
		<td> goodsCode </td>
		<td>
			${f:h(goodsCode)}
		</td>	
	</tr>
	<tr>
		<td> lastName </td>
		<td>
			${f:h(lastName)}
		</td>	
	</tr>
	<tr>
		<td> firstName </td>
		<td>
			${f:h(firstName)}
		</td>	
	</tr>
	<tr>
		<td> lastNameKana </td>
		<td>
			${f:h(lastNameKana)}
		</td>	
	</tr>
	<tr>
		<td> firstNameKana </td>
		<td>
			${f:h(firstNameKana)}
		</td>	
	</tr>
	<tr>
		<td> zipCode </td>
		<td>
			${f:h(zipCode)}
		</td>	
	</tr>
	<tr>
		<td> prefectureCode </td>
		<td>
			${f:h(prefectureCode)}
		</td>	
	</tr>
	<tr>
		<td> address1 </td>
		<td>
			${f:h(address1)}
		</td>	
	</tr>
	<tr>
		<td> address2 </td>
		<td>
			${f:h(address2)}
		</td>	
	</tr>
	<tr>
		<td> ageType </td>
		<td>
			${f:h(ageType)}
		</td>	
	</tr>
	<tr>
		<td> sexType </td>
		<td>
			${f:h(sexType)}
		</td>	
	</tr>
	<tr>
		<td> tel1 </td>
		<td>
			${f:h(tel1)}
		</td>	
	</tr>
	<tr>
		<td> tel2 </td>
		<td>
			${f:h(tel2)}
		</td>	
	</tr>
	<tr>
		<td> tel3 </td>
		<td>
			${f:h(tel3)}
		</td>	
	</tr>
	<tr>
		<td> email </td>
		<td>
			${f:h(email)}
		</td>	
	</tr>
	<tr>
		<td> emailContactFlag </td>
		<td>
			${f:h(emailContactFlag)}
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

<s:link href="edit/${seq}"> edit </s:link>


<br/><br/>
<s:link href="/campaignEntry/">list page</s:link>
</body>
</html>