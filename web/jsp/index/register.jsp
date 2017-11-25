<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>注册</title>
		<script src="<%=request.getContextPath()%>/js/jquery.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=request.getContextPath()%>/js/index.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/index.css"/>
	</head>
	<body>

		<%--注册信息--%>
		<%
			String resgiterMsg = (String) request.getAttribute("resgiterMsg");
			if(resgiterMsg != null && !resgiterMsg.equals("")){
				out.print("<script>");
				out.print("alert('" + resgiterMsg + "');");
				out.print("</script>");
			}
		%>

		<header>
			<a href="#" class="logo"></a>
			<div class="desc">欢迎注册</div>
		</header>
		<section>
			<form action="/user/doRegister" method="post">
				<div class="register-box">
					<label class="username_label">用 户 名
					<input maxlength="20" name="username" type="text" placeholder="请输入您的用户名"/>
					</label>
					<div class="tips">
						
					</div>
				</div>
				<div class="register-box">
					<label class="other_label">设 置 密 码
					<input maxlength="20" name="password" type="password" placeholder="建议至少使用两种字符组合"/>
					</label>
					<div class="tips">
						
					</div>
				</div>
				<div class="register-box">
					<label class="other_label">确 认 密 码
					<input maxlength="20" type="password" name="repassword" placeholder="请再次输入密码"/>
					</label>
					<div class="tips">
						
					</div>
				</div>
				<div class="register-box">
					<label class="other_label">
					<span>中国</span>
					<input class="phone" maxlength="11" name="phone" type="text" placeholder="建议使用常用手机"/>
					</label>
					<div class="tips">
						
					</div>
				</div>
				<div class="register-box">
					<label class="other_label">验 证 码
					<input maxlength="4" type="text" placeholder="请输入验证码"/>
					</label>
					<span id="code"></span>
					<div class="tips">
						
					</div>
				</div>
				<div class="arguement">
					<input type="checkbox" id="xieyi"/>
					阅读并同意
					<a href="#">《用户注册协议》</a>
					<a href="#">《隐私政策》</a>
					<div class="tips">
						
					</div>
				</div>
				<div class="submit_btn">
					<button type="submit" id="submit_btn">立 即 注 册</button>
				</div>
			</form>
		</section>
	</body>
</html>
