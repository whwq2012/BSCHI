<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign Up Page</title>
	<link rel="stylesheet" type="text/css" href="css/signup.css" />
	<script type="text/javascript" src="js/lib/jquery-1.10.2.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
	        $("test").click(function(){
                $("test").text("这是后来添加的内容");
				alert("nihao");
            })
            $("p").dblclick(function(){
                $("button").click();
            })
			$(".password").keydown(function(){
               $("input").css("background-color","#FFFFCC");
            });
			$(".password_confirm").keydown(function(){
                if ($(".password").val() != null) {
				    if ($(".password").val() != $(".password_confirm").val()) {
						 $(".error_message").text("Please confirm your input password.");
					} else {
						 $(".error_message").text("");
					}
				} else {
				    $(".error_message").text("Please input your password first.");
				}
            });
        })
		function change(){ 
            alert("onclick"); 
        }
	</script>
</head>
<body>
    <div class="nav">Sign up</div>
	<div class="sign_up_form">
		<form action="user/regist.action" class="from_bady">
			<table border="1">
				<tr>
					<td class="row_name">User Name:</td>  
					<td><input type="text" name="name" class="name"></td>  
				</tr>  
				<tr>  
					<td class="row_name">password:</td>  
					<td><input type="password" name="password" class="password"></td>
				</tr>  
				<tr>  
					<td class="row_name">confirm password:</td>  
					<td><input type="password" name="confirm_password" class="password_confirm"></td>
					<div class="error_message"></div>
				</tr>  			
				<tr>  
					<td><input type="submit" value="Sign Up"></td>  
				</tr>  
			</table>
		</form>
	</div>
	<button class="test" onclick="change()">button</button>
</body>
</html> 