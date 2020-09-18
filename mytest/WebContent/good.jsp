<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#for {
	position: absolute;
	left: 50%;
	top: 30%;
	width: 200px;
	height: 100px;
	margin-left: -100px;
	margin-top: -50px;
	height: 350px;
	width: 300px;
	background-color: #fff;
	/* text-align:center; */
	margin :0 auto;
}

#women {
	width: 350px;
	height: 500px;
	background-size: cover;
}

#context{
	text-align:center;
}

body{
	background: url('assets/images/bg.jpg');
	background-size: cover;

}

input[type="submit"] {
	border: 0xp;
	border-radius: 50%;
	background-size: cover;
	width: 50px;
	height: 50px;
}

#info {
	text-align: left;
}
</style>



</head>
<body >
	<!-- 先显示进货表单,再通过按钮跳转到商品管理页面 -->
	<div id="for">

		<div id="info"></div>
		
		
		<div id="context">
		<form action="saveToDB.do" method="post"
			enctype="multipart/form-data">

			<table>

				<input value="" name="goodId" hidden="hidden" />

				<tr>
					<td>
						<input type="text" placeholder="名称" style="width: 170px"
							name="goodName" value=""
							required="required" />
					</td>
				</tr>

				<tr>
					<td><input type="number" placeholder="价格" style="width: 170px"
						name="goodPrice" value=""
						required="required" /></td>
				</tr>

				<tr>
					<td><input type="number" placeholder="折扣" style="width: 170px"
						name="goodDis" value="" required="required" /></td>
				</tr>

				<tr>
					<td><input type="text" placeholder="品牌" style="width: 170px"
						name="goodBrand" value=""
						required="required" /></td>
				</tr>

				

				<tr>
					<td><input type="text" placeholder="描述" style="width: 170px"
						name="goodDiscribe" value=""
						required="required" /></td>
				</tr>

				<tr>
					<td><input type="text" placeholder="状态" style="width: 170px"
						name="goodStatus" value=""
						required="required" /></td>
				</tr>

				<tr>
					<td><input type="number" placeholder="数量" style="width: 170px"
						name="goodAcount" value=""
						required="required" /></td>
				</tr>

				<tr>
					<td><input type="text" placeholder="参数" style="width: 170px"
						name="goodSize" value=""
						required="required" /></td>
				</tr>

				<tr>
					<td><select name="category" placeholder="类别"
						style="width: 180px">
							<option value="1">TV</option>
							<option value="2">Headphones</option>
							<option value="3">CellPhone</option>
							<option value="4">Camera</option>
					</select></td>
				</tr>

				<tr>
					<td><input type="file" name="myFile" style="width: 170px"
						required="required" /></td>
				</tr>

				<tr>
					<td><input type="submit" value="提交" /></td>
				</tr>
			</table>
		</form>
		</div>
	</div>

	<div id="women"></div>


</body>
</html>