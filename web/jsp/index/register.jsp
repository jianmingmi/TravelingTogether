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

				<div>上传头像</div>
				<div id="preview">
					<img id="imghead" border="0" src="/images/photo_icon.png" width="90" height="90" onClick="$('#previewImg').click();">
				</div>
				<input type="file" onChange="previewImage(this)" style="display: none;" id="previewImg">

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
	<script>
        //图片上传预览    IE是用了滤镜。
        function previewImage(file)
        {
            var MAXWIDTH  = 90;
            var MAXHEIGHT = 90;
            var div = document.getElementById('preview');
            if (file.files && file.files[0])
            {
                div.innerHTML ='<img id=imghead onclick=$("#previewImg").click()>';
                var img = document.getElementById('imghead');
                img.onload = function(){
                    var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                    img.width  =  rect.width;
                    img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                    img.style.marginTop = rect.top+'px';
                }
                var reader = new FileReader();
                reader.onload = function(evt){img.src = evt.target.result;}
                reader.readAsDataURL(file.files[0]);
            }
            else //兼容IE
            {
                var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
                file.select();
                var src = document.selection.createRange().text;
                div.innerHTML = '<img id=imghead>';
                var img = document.getElementById('imghead');
                img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
                div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
            }
        }
        function clacImgZoomParam( maxWidth, maxHeight, width, height ){
            var param = {top:0, left:0, width:width, height:height};
            if( width>maxWidth || height>maxHeight ){
                rateWidth = width / maxWidth;
                rateHeight = height / maxHeight;

                if( rateWidth > rateHeight ){
                    param.width =  maxWidth;
                    param.height = Math.round(height / rateWidth);
                }else{
                    param.width = Math.round(width / rateHeight);
                    param.height = maxHeight;
                }
            }
            param.left = Math.round((maxWidth - param.width) / 2);
            param.top = Math.round((maxHeight - param.height) / 2);
            return param;
        }
	</script>
</html>
