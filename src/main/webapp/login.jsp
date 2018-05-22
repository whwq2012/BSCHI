<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<head>
<link rel="stylesheet" type="text/css" href="css/login.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="js/lib/jquery-1.10.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/verify.css">
<script type="text/javascript">
</script>
</head>

<body>
	<div class="login">
		<div class="heading">
			<h2 class="login_title">登录</h2>
			<form class="form_layout" id="login_form" action=""
				method="post">

				<div class="input-group input-group-lg">
					<input type="text" class="form-control" name="name" id="userName"
						placeholder="用户名">
				</div>

				<div class="input-group input-group-lg">
					<input type="password" class="form-control" placeholder="密码" id="password"
						name="password">
				</div>
				<div id="mpanel3" style="margin-top: 20px"></div>

				<button class="float" id="check-btn2">登录</button>
				<div class="float">
					<a class="sign_up_link" href="regist.jsp">注册</a>
				</div>
			</form>
		</div>
	</div>
	<div class="footer">
		<p class="footer_content">Copyright © 2018 schwa test company, Inc
			All right Reserved</p>
	</div>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/verify.js"></script>
<script>
	$('#mpanel3').codeVerify({
		type : 2,
		figure : 100, //位数，仅在type=2时生效
		arith : 0, //算法，支持加减乘，不填为随机，仅在type=2时生效
		width : '200px',
		height : '50px',
		fontSize : '30px',
		btnId : 'check-btn2',
		ready : function() {
		},
		success : function() {
			$.post("http://localhost:8080/BSCHI/user/login", 
					{userName: $("#userName").val(), password: $("#password").val()},
					function(data){
						if (data["code"] == "0"){
							alert("恭喜登录成功");
						}else if (data["code"] == "-1"){
							alert("抱歉，用户名不存在");
						}else if (data["code"] == "-2"){
							alert("抱歉，密码错误");
						}
			})
		},
		error : function() {
			alert('验证码错误，重新输入！');
		}
	});
</script>


</html>