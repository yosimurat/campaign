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
		<html:errors />

		<s:form>

			<table class="tablebg">
				<colgroup>
					<col />
					<col />
				</colgroup>
				<tbody>
					<tr>
						<th>応募商品コード</th>
						<td>
							${goodsMap[goodsCode]}
						</td>
					</tr>
					<tr>
						<th>お名前</th>
						<td>
							${f:h(lastName)} ${f:h(firstName)}
						</td>
					</tr>
					<tr>
						<th>フリガナ</th>
						<td>
							${f:h(lastNameKana)} ${f:h(firstNameKana)}
						</td>
					</tr>
					<tr>
						<th>郵便番号</th>
						<td>${f:h(zipCode)}</td>
					</tr>
					<tr>
						<th>都道府県コード</th>
						<td>
							${prefectureMap[prefectureCode]}
						</td>
					</tr>
					<tr>
						<th>住所（市区町村番地）</th>
						<td>${f:h(address1)}</td>
					</tr>
					<tr>
						<th>住所（建物名等）</th>
						<td>${f:h(address2)}</td>
					</tr>
					<tr>
						<th>年代区分</th>
						<td>
							${ageMap[ageType]}
						</td>
					</tr>
					<tr>
						<th>性別区分</th>
						<td>
							${sexMap[sexType]}
						</td>
					</tr>
					<tr>
						<th>電話番号</th>
						<td>
							${f:h(tel1)}
							－
							${f:h(tel2)}
							－
							${f:h(tel3)}
						</td>
					</tr>
					<tr>
						<th>メールアドレス</th>
						<td>${f:h(email)}</td>
					</tr>
					<tr>
						<th>メール通知承諾フラグ</th>
						<td>
							<c:if test="${emailContactFlag == '1'}">メールでのお知らせを希望する</c:if>
						</td>
					</tr>
				</tbody>
			</table>

			<br />
			<input type="submit" name="insert" value="登録" class="btn"/>
			<input type="submit" name="back" value="戻る" class="btn"/>
		</s:form>
		<br /> <br />

		<s:link href="/campaignEntry/">list page</s:link>

		<div id="header">フッター</div>

	</div>
</body>
</html>