<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="${f:url('/css/global.css')}"/>
</head>
<body>

<html:errors/>

<s:form>
        <html:hidden property="seq" />
<table class="tablebg">
	<tr>
		<td> goodsCode </td>
		<td>
		    <html:text property="goodsCode" />
		</td>	
	</tr>
	<tr>
		<td> lastName </td>
		<td>
		    <html:text property="lastName" />
		</td>	
	</tr>
	<tr>
		<td> firstName </td>
		<td>
		    <html:text property="firstName" />
		</td>	
	</tr>
	<tr>
		<td> lastNameKana </td>
		<td>
		    <html:text property="lastNameKana" />
		</td>	
	</tr>
	<tr>
		<td> firstNameKana </td>
		<td>
		    <html:text property="firstNameKana" />
		</td>	
	</tr>
	<tr>
		<td> zipCode </td>
		<td>
		    <html:text property="zipCode" />
		</td>	
	</tr>
	<tr>
		<td> prefectureCode </td>
		<td>
		    <html:text property="prefectureCode" />
		</td>	
	</tr>
	<tr>
		<td> address1 </td>
		<td>
		    <html:text property="address1" />
		</td>	
	</tr>
	<tr>
		<td> address2 </td>
		<td>
		    <html:text property="address2" />
		</td>	
	</tr>
	<tr>
		<td> ageType </td>
		<td>
		    <html:text property="ageType" />
		</td>	
	</tr>
	<tr>
		<td> sexType </td>
		<td>
		    <html:text property="sexType" />
		</td>	
	</tr>
	<tr>
		<td> tel1 </td>
		<td>
		    <html:text property="tel1" />
		</td>	
	</tr>
	<tr>
		<td> tel2 </td>
		<td>
		    <html:text property="tel2" />
		</td>	
	</tr>
	<tr>
		<td> tel3 </td>
		<td>
		    <html:text property="tel3" />
		</td>	
	</tr>
	<tr>
		<td> email </td>
		<td>
		    <html:text property="email" />
		</td>	
	</tr>
	<tr>
		<td> emailContactFlag </td>
		<td>
		    <html:text property="emailContactFlag" />
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

<input type="submit" name="update" value="UPDATE" />
</s:form>
<br/><br/>

<s:link href="/campaignEntry/">list page</s:link>

</body>
</html>