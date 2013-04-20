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
<script>
function test(form){
	form.goodsCode.value = "01";
	form.lastName.value = "鈴木";
	form.firstName.value = "一郎";
	form.lastNameKana.value = "スズキ";
	form.firstNameKana.value = "イチロウ";
	form.zipCode.value = "5510001";
	form.prefectureCode.value = "13";
	form.address1.value = "中央区銀座１－１";
	form.address2.value = "○○ビル";
	form.ageType.value = "20";

	form.tel1.value = "03";
	form.tel2.value = "1234";
	form.tel3.value = "5678";
	form.email.value = "test@test.com";

}
</script>
</head>
<body>
	<div class="container">
		<div id="header">ヘッダー</div>

		<s:form>

			<table class="tablebg">
				<colgroup>
					<col />
					<col />
				</colgroup>
				<tbody>
					<tr>
						<th>応募商品</th>
						<td>
							<html:select property="goodsCode" >
								<html:option value="">選択してください</html:option>
								<html:optionsCollection  name="goodsMap" value="key" label="value"/>
							</html:select>
							<html:errors property="goodsCode"/>
						</td>
					</tr>
					<tr>
						<th>お名前</th>
						<td>
							<span class="shortLabel">姓：</span><html:text property="lastName" maxlength="20" styleClass="short" />
							<span class="shortLabel">名：</span><html:text property="firstName" maxlength="20" styleClass="short"/>
							<html:errors property="lastName"/>
							<html:errors property="firstName"/>
						</td>
					</tr>
					<tr>
						<th>フリガナ</th>
						<td>
							<span class="shortLabel">セイ：</span><html:text property="lastNameKana" maxlength="20" styleClass="short"/>
							<span class="shortLabel">メイ：</span><html:text property="firstNameKana" maxlength="20" styleClass="short"/>
							<html:errors property="lastNameKana"/>
							<html:errors property="firstNameKana"/>
						</td>
					</tr>
					<tr>
						<th>郵便番号</th>
						<td>
							<html:text property="zipCode" maxlength="7" styleClass="zip"/>
							<html:errors property="zipCode"/>
						</td>
					</tr>
					<tr>
						<th>都道府県</th>
						<td>
							<html:select property="prefectureCode" >
								<html:option value="">選択してください</html:option>
								<html:optionsCollection  name="prefectureMap" value="key" label="value"/>
							</html:select>
							<html:errors property="prefectureCode"/>
						</td>
					</tr>
					<tr>
						<th>住所（市区町村番地）</th>
						<td>
							<html:text property="address1" maxlength="200" styleClass="long" />
							<html:errors property="address1"/>
						</td>
					</tr>
					<tr>
						<th>住所（建物名等）</th>
						<td><html:text property="address2" maxlength="200" styleClass="long" /></td>
					</tr>
					<tr>
						<th>年代</th>
						<td>
							<html:select property="ageType" >
								<html:option value="">選択してください</html:option>
								<html:optionsCollection  name="ageMap" value="key" label="value"/>
							</html:select>
						</td>
					</tr>
					<tr>
						<th>性別</th>
						<td>
							<html:radio property="sexType" value="1" styleId="sexType_1" /><label for="sexType_1">男性</label>
							<html:radio property="sexType" value="2" styleId="sexType_2" /><label for="sexType_2">女性</label>
						</td>
					</tr>
					<tr>
						<th>電話番号</th>
						<td>
							<html:text property="tel1" maxlength="4" styleClass="tel" />
							－
							<html:text property="tel2" maxlength="4" styleClass="tel" />
							－
							<html:text property="tel3" maxlength="4" styleClass="tel" />
							<html:errors property="tel1"/>
							<html:errors property="tel2"/>
							<html:errors property="tel3"/>
						</td>
					</tr>
					<tr>
						<th>メールアドレス</th>
						<td>
							<html:text property="email" maxlength="400" styleClass="email" />
							<html:errors property="email"/>
						</td>
					</tr>
					<tr>
						<th>メール通知の承諾</th>
						<td>
							<html:checkbox property="emailContactFlag"  value="1" styleId="emailContactFlag_1"/>
							<html:hidden property="emailContactFlag"  value="0"/>
							<label for="emailContactFlag_1">メールでのお知らせを希望する</label>
						</td>
					</tr>
				</tbody>
			</table>
			<br />
			<input type="submit" name="confirm" value="確認" class="btn" />
			<input type="button" value="テスト" class="btn" onclick="test(this.form)"/>
		</s:form>
		<br /> <br />

		<s:link href="/campaignEntry/">list page</s:link>

		<div id="header">フッター</div>

	</div>
</body>
</html>